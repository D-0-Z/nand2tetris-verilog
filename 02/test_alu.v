module test_alu();
    reg         zx, zy, nx, ny, f, no;
    reg [15:0]  x;
    reg [15:0]  y;
    reg [15:0]  exp_out;

    reg         exp_zr, exp_ng;

    wire [15:0] out;
    wire        zr, ng;

    alu u1(out, zr, ng, x, y, zx, zy, nx, ny, f, no);

    initial
        begin
            x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 1;
            nx = 0;
            zy = 1;
            ny = 0;
            f = 1;
            no = 0;
            exp_out = 16'b0000000000000000;
            exp_zr = 16'b1;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 1;
            nx = 1;
            zy = 1;
            ny = 1;
            f = 1;
            no = 1;
            exp_out = 16'b0000000000000001;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 1;
            nx = 1;
            zy = 1;
            ny = 0;
            f = 1;
            no = 0;
            exp_out = 16'b1111111111111111;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 0;
            nx = 0;
            zy = 1;
            ny = 1;
            f = 0;
            no = 0;
            exp_out = 16'b0000000000000000;
            exp_zr = 16'b1;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 1;
            nx = 1;
            zy = 0;
            ny = 0;
            f = 0;
            no = 0;
            exp_out = 16'b1111111111111111;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 0;
            nx = 0;
            zy = 1;
            ny = 1;
            f = 0;
            no = 1;
            exp_out = 16'b1111111111111111;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 1;
            nx = 1;
            zy = 0;
            ny = 0;
            f = 0;
            no = 1;
            exp_out = 16'b0000000000000000;
            exp_zr = 16'b1;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 0;
            nx = 0;
            zy = 1;
            ny = 1;
            f = 1;
            no = 1;
            exp_out = 16'b0000000000000000;
            exp_zr = 16'b1;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 1;
            nx = 1;
            zy = 0;
            ny = 0;
            f = 1;
            no = 1;
            exp_out = 16'b0000000000000001;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 0;
            nx = 1;
            zy = 1;
            ny = 1;
            f = 1;
            no = 1;
            exp_out = 16'b0000000000000001;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 1;
            nx = 1;
            zy = 0;
            ny = 1;
            f = 1;
            no = 1;
            exp_out = 16'b0000000000000000;
            exp_zr = 16'b1;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 0;
            nx = 0;
            zy = 1;
            ny = 1;
            f = 1;
            no = 0;
            exp_out = 16'b1111111111111111;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 1;
            nx = 1;
            zy = 0;
            ny = 0;
            f = 1;
            no = 0;
            exp_out = 16'b1111111111111110;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 0;
            nx = 0;
            zy = 0;
            ny = 0;
            f = 1;
            no = 0;
            exp_out = 16'b1111111111111111;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 0;
            nx = 1;
            zy = 0;
            ny = 0;
            f = 1;
            no = 1;
            exp_out = 16'b0000000000000001;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 0;
            nx = 0;
            zy = 0;
            ny = 1;
            f = 1;
            no = 1;
            exp_out = 16'b1111111111111111;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 0;
            nx = 0;
            zy = 0;
            ny = 0;
            f = 0;
            no = 0;
            exp_out = 16'b0000000000000000;
            exp_zr = 16'b1;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000000000;
            y = 16'b1111111111111111;
            zx = 0;
            nx = 1;
            zy = 0;
            ny = 1;
            f = 0;
            no = 1;
            exp_out = 16'b1111111111111111;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 1;
            nx = 0;
            zy = 1;
            ny = 0;
            f = 1;
            no = 0;
            exp_out = 16'b0000000000000000;
            exp_zr = 16'b1;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 1;
            nx = 1;
            zy = 1;
            ny = 1;
            f = 1;
            no = 1;
            exp_out = 16'b0000000000000001;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 1;
            nx = 1;
            zy = 1;
            ny = 0;
            f = 1;
            no = 0;
            exp_out = 16'b1111111111111111;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 0;
            nx = 0;
            zy = 1;
            ny = 1;
            f = 0;
            no = 0;
            exp_out = 16'b0000000000010001;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 1;
            nx = 1;
            zy = 0;
            ny = 0;
            f = 0;
            no = 0;
            exp_out = 16'b0000000000000011;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 0;
            nx = 0;
            zy = 1;
            ny = 1;
            f = 0;
            no = 1;
            exp_out = 16'b1111111111101110;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 1;
            nx = 1;
            zy = 0;
            ny = 0;
            f = 0;
            no = 1;
            exp_out = 16'b1111111111111100;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 0;
            nx = 0;
            zy = 1;
            ny = 1;
            f = 1;
            no = 1;
            exp_out = 16'b1111111111101111;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 1;
            nx = 1;
            zy = 0;
            ny = 0;
            f = 1;
            no = 1;
            exp_out = 16'b1111111111111101;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 0;
            nx = 1;
            zy = 1;
            ny = 1;
            f = 1;
            no = 1;
            exp_out = 16'b0000000000010010;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 1;
            nx = 1;
            zy = 0;
            ny = 1;
            f = 1;
            no = 1;
            exp_out = 16'b0000000000000100;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 0;
            nx = 0;
            zy = 1;
            ny = 1;
            f = 1;
            no = 0;
            exp_out = 16'b0000000000010000;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 1;
            nx = 1;
            zy = 0;
            ny = 0;
            f = 1;
            no = 0;
            exp_out = 16'b0000000000000010;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 0;
            nx = 0;
            zy = 0;
            ny = 0;
            f = 1;
            no = 0;
            exp_out = 16'b0000000000010100;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 0;
            nx = 1;
            zy = 0;
            ny = 0;
            f = 1;
            no = 1;
            exp_out = 16'b0000000000001110;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 0;
            nx = 0;
            zy = 0;
            ny = 1;
            f = 1;
            no = 1;
            exp_out = 16'b1111111111110010;
            exp_zr = 16'b0;
            exp_ng = 16'b1;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 0;
            nx = 0;
            zy = 0;
            ny = 0;
            f = 0;
            no = 0;
            exp_out = 16'b0000000000000001;
            exp_zr = 16'b0;
            exp_ng = 16'b0;

            #1
                x = 16'b0000000000010001;
            y = 16'b0000000000000011;
            zx = 0;
            nx = 1;
            zy = 0;
            ny = 1;
            f = 0;
            no = 1;
            exp_out = 16'b0000000000010011;
            exp_zr = 16'b0;
            exp_ng = 16'b0;
        end

    initial
        $monitor("alu %d %b %b %b %b %b %b %b %b (%b %b) (%b %b) (%b %b)", $time, zx, zy, nx, ny, f, no, x, y, out, exp_out, zr, exp_zr, ng, exp_ng);

endmodule
