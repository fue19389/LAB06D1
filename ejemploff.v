module Moore_1101 (
  input clk, A,
  output Out,
  output [2:0]S
);
  wire Out;
  reg [2:0] S = 0;

  assign Out = S[2] & ~S[1] & ~ S[0];

  always @ (posedge clk)
    begin
      S[0] <= (~S[2]&~S[1]&~S[0]&A) | (S[1]&~S[0]&~A);
      S[1] <= (~S[1]&S[0]&A) | (S[1]&~S[0]) | (S[2]&A);
      S[2] <= (S[1]&S[0]&A);

    end


endmodule
