#set text(12pt,font:("SimHei")) 
#set par(justify: true,first-line-indent: 2em)

#show heading: it =>  {
    it
    par()[#text()[#h(0.0em)]]
}

= 在有限的面中构筑对无限的想象

#set text(12pt,font:("SimSun")) 
我们常见的集合的表达方式是：

$ S = {e_1,e_2,e_3,...} $

这个集合有无限个元素，它是无限可列的。为了规范，我们一般列3个元素来描述元素间的规律，然后使用省略号表示后面接着无数的元素，它们也满足此规律。

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
== 应该用什么盛装元素
#set text(12pt,font:("SimSun"))
我在想这更应该是一个语言学问题，数学的表达严谨很大程度也依赖符号表达的严谨。

一些不重复的元素只有放在大括号里面，我们才能称这个表达式可以是一个集合。换言之，集合是一种抽象的容器，在符号表达上需要用大括号表示这种包含的语义（计算机系的学生一定知道我在说什么，许多编程语言的集合初始化都有采用大括号形式）：

$ {e_1,e_2,e_3,...} $

集合的特征之一就是元素是无序的，而且是唯一的。假如我将括号变更为其他括号呢？

$ (e_1,e_2,e_3,...) $

这是一个元组，里面的元素可以重复，它是有序的（它内部元素的顺序就如同你表达的那样）。

$ [e_1,e_2,e_3,...] $

这是向量，我线性代数学得很差，故不作过多阐述。多说一句，你可以把它看作多个分量的容器。倘若我们不添加括号呢？

$ e_1,e_2,e_3,... $

这是一个无限序列（数列），既然我们只是去掉了容器的“外衣”。那我们应当称呼 ${e_1,e_2,e_3,...}$ 包含了一个 $e_1,e_2,e_3,...$ 序列吗？

不，我们不能。因为序列也可以被看作一种容器，这样的话这个集合包含的唯一元素就是容器而不是序列里面的项了。_所以我们应当说集合 ${e_1,e_2,e_3,...}$ 包含了 $e_1,e_2,e_3,...$ 的所有项，而不是序列本身_。

再议大括号表达式本身，它不一定表达的是集合，具体要结合上下文分析其语义。

== 不统一的符号
我记得在我初中的时候，包含符号下面的横线会多一根：⫋。它的语义是包含于但不等于，就是真子集的关系（同 #sym.subset.neq）。

在更多的文章中则选用了我更喜欢的简化版本：

// You can also import those.
#import table: cell, header

#table(
  columns: 2,
  align: center,
  header(
    [*符号*],
    [*语义*],
  ),
  [$A #sym.subset.eq B$], [$A$ 的每个元素都属于 $B$，与 $A #sym.supset.eq B$ 等价],
  [$A #sym.subset.neq B$], [$A$ 的每个元素都属于 $B$，但 $B$ 至少有一个元素不属于 $A$],
  [$A #sym.subset B$], [表示真子集还是子集需要结合作者说明],
  [$A #sym.subset.eq.not B$], [$A$ 和 $B$ 彼此间不存在共同的元素]
)

正是因为 #sym.subset 的语义不确定性，ISO 80000-2 标准定义了两种符号搭配：
- 使用 $#sym.subset.eq$ 表示子集关系，$#sym.subset$ 表示真子集关系
- 使用 $#sym.subset$ 表示子集关系，$#sym.subset.neq$ 表示真子集关系。

本文采用前者作为行笔规范。
