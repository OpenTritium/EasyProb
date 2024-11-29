#set text(12pt,font:("SimHei")) 
#set par(justify: true,first-line-indent: 2em)

#show heading: it =>  {
    it
    par()[#text()[#h(0.0em)]]
}

= 在有限的平面中构筑对无限的想象

#set text(12pt,font:("SimSun")) 
我们常见的集合的表达方式是：

$ S = {e_1,e_2,e_3,...} $

这个集合有无限个元素，它是无限可列的。为了规范，我们一般列3个元素来描述元素间规律，然后使用省略号表示后面接着无数的元素。

#figure(
  image("a_simple_set.svg", width: 20%),
  caption: [
    一个看起来只有三个元素的集合
  ],
)<set_0>

一眼看去，很难说这个集合包含了无限的元素。为了表示一个集合包含了无限的元素，我们干脆涂黑整个封闭区域，而这些元素在其中的表现形式也是无穷小的点。对于无限的元素集合，使用符号去标识元素是没有价值的，很拥挤不说，况且我们可以使用更具表达力的数学表达式得知哪个元素在哪片封闭区域所代表的集合。

#figure(
  image("another_simple_set.svg", width: 20%),
  caption: [
    一个包含无限元素的集合
  ],
)<set_1>

$ e_4 in S $

#set text(12pt,font:("SimHei")) 
= 符号问题
#set text(12pt,font:("SimSun"))
我在想这更应该是一个语言学问题，数学的表达严谨很大程度也依赖符号表达的严谨。

ISO标准文件还卖几百大洋
我记得在我初中的时候，包含符号下面的横线会多一根

