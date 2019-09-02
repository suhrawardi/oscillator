module osc(
    input CLK,
    output tone_100hz,
    output tone_1khz,
    output tone_12khz
    );

reg [31:0] period_100hz = 10000;
reg [31:0] period_1khz = 1000;
reg [31:0] period_12khz = 80;

tone #(32) t1(.CLK (CLK), .period (period_100hz), .tone_out (tone_100hz));
tone #(32) t2(.CLK (CLK), .period (period_1khz), .tone_out (tone_1khz));
tone #(32) t3(.CLK (CLK), .period (period_12khz), .tone_out (tone_12khz));

endmodule
