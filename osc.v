module osc(input CLK,
    output reg BUZZER
    );

reg [25:0] count;

always @(posedge CLK)
begin
  count <= count + 1;
  if (count == 26'd32000)
  begin
    BUZZER <= ~ BUZZER;
    count <= 0;
  end
end

endmodule
