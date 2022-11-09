module tag_comp()
input clk,reset;
input write,read;
output hit,miss;

reg [2:0] pres_state, next_state;

always @(posedge clk or reset)
begin
    if(reset==0)
        pres_state = next_state;
    else
    begin
        pres_state = 0;
        next_state = 0;
    end
end

always @(pres_state or reset)
begin
    case(pres_state)

    1: begin
            if(tag_dir[index][tag_dir_length]==1)
                next_state = 2;
            else
                next_state = 5;
        end

    2:  begin
            if(tag_dir[index][tag_dir_length - 2:] == addr[pa_length:pa_length-no_of_l1_tag_bits])
            begin
                hit = 1;
                hit_count += 1;
                miss = 0;
                
                next_state = 7;
            end
            else
            begin
                hit = 0;
                miss = 1;
                miss_count += 1;

                next_state = 3;
            end
        end
    
    3:  begin
            if(tag_dir[index][tag_dir_length-1]==1)
                next_state = 4;
            else
                next_state = 5;
        end
    
    4:  begin
            write_line w1(index,offset);
            tag_dir[index][tag_dir_length-1]==0;
            next_state = 5;
        end

    5:  begin
            read_line r1(index,offset);
            next_state = 6;
        end

    6:  begin
            tag_dir[index][tag_dir_length]==1;
            next_state = 7;
        end
    
    7:  begin
            if(read = 1 && write = 0)
                next_state = 8;
            else
                next_state = 9;
        end
    
    8:  begin
            dataOut = cache[index][(word_size * blockOffset) + no_of_l1_tag_bits + (word_size-1):((word_size * blockOffset) + no_of_l1_tag_bits + (word_size-1)) - 1];
            next_state = 0;
        end
    
    9:  begin
            buffer[0] = 1;
            buffer[20:1] = addr[31:12];
            buffer[532:21] = dataIn;
            cache[index] = buffer;
            
            next_state = 0;
        
    default: 

    endcase

end