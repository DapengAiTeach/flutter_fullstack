class Cookie {
  // 成员变量：味道
  String flavor;
  // 成员变量：直径 cm
  int size;
  // 构造函数：做饼干时必须给味道+尺寸
  Cookie(this.flavor, this.size);
  // 成员方法
  String describe() => '一块$size 厘米的 $flavor 味饼干';
}