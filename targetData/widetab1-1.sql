

  CREATE TABLE a(
   a00, a01, a02, a03, a04, a05, a06, a07, a08, a09,
   a10, a11, a12, a13, a14, a15, a16, a17, a18, a19,
   a20, a21, a22, a23, a24, a25, a26, a27, a28, a29,
   a30, a31, a32, a33, a34, a35, a36, a37, a38, a39,
   a40, a41, a42, a43, a44, a45, a46, a47, a48, a49,
   a50, a51, a52, a53, a54, a55, a56, a57, a58, a59,
   pd, bn, vb, bc, cn, ie, qm);
  CREATE INDEX a1 on a(pd, bn, vb, bc, cn); -- preferred index
  CREATE INDEX a2 on a(pd, bc, ie, qm);     -- suboptimal index
  CREATE TABLE b(bg, bc, bn, iv, ln, mg);
  CREATE INDEX b1 on b(bn, iv, bg);


S
Q
