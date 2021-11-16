---
title: 拉普拉斯微分方程式在球坐标系中的解法
linktitle: 重力学概述
description: 如何快速进入重力学的研究.
date: 2021-11-01
publishdate: 2021-11-01
lastmod: 2021-11-16
categories: [getting started,fundamentals]
authors: ["Li Hui"]
keywords: [install]
menu:
  docs:
    parent: "getting-started"
    weight: 30
weight: 30
sections_weight: 30
draft: false
toc: true
---

设V是坐标$x,y,z$的函数，则偏微分方程：
$$
\Delta V=\nabla\ast\nabla V=\nabla^2\;V=divgradV=(\partial^2\;V)/(\partial x^2\;)+(\partial^2\;V)/(\partial y^2\;)+(\partial^2\;V)/(\partial z^2\;)=0
$$
称为拉普拉斯微分方程，也简称拉普拉斯方程，常用下面符号表示：
$$
\Delta V=0
$$
其中$\Delta$是拉普拉斯算子，也可以写为$\Delta^2$:
$$
\Delta=\frac{\partial^2}{\partial x^2}+\frac{\partial^2}{\partial y^2}+\frac{\partial^2}{\partial z^2}
$$
拉普拉斯方程又称调和方程、位势方程，拉普拉斯方程是泊松方程的特殊形式，拉普拉斯函数是调和函数，泊松方程不是调和函数。

![image-20211116233943704](https://gitee.com/georgegou/gravitychina/raw/picture/202111162339118.png)

直角坐标系-球坐标系中的转化：
$$
x=rsin{\theta}cos{\lambda},y=sin{\theta}sin{\lambda},z=rcos{\theta}
$$
拉普拉斯方程在球坐标系中表示：
$$
\Delta V=\nabla^2V=\frac{1}{r^2}\frac{\partial}{\partial r}\left(r^2\frac{\partial V}{\partial r}\right)+\frac{1}{r^2sin{\theta}}\frac{\partial}{\partial\theta}\left(sin{\theta}\frac{\partial V}{\partial\theta}\right)+\frac{1}{r^2{sin}^2{\theta}}\frac{\partial^2V}{\partial\lambda^2}=0
$$
设：$V\left(r,\theta,\lambda\right)=f\left(r\right)Y\left(\theta,\lambda\right)$代入（5）中得：
$$
\frac{Y\left(\theta,\lambda\right)}{r^2}\frac{d}{dr}\left(r^2\frac{df\left(r\right)}{dr}\right)+\frac{f\left(r\right)}{r^2sin{\theta}}\frac{\partial}{\partial\theta}\left(sin{\theta}\frac{\partial Y\left(\theta,\lambda\right)}{\partial\theta}\right)+\frac{f\left(r\right)}{r^2{sin}^2{\theta}}\frac{\partial^2Y\left(\theta,\lambda\right)}{\partial\lambda^2}=0
$$
（6）式两边同除以$f\left(r\right)Y\left(\theta,\lambda\right)$，并等式两边再同乘$r^2$，并进行移项得：
$$
\frac{1}{f\left(r\right)}\frac{d}{dr}\left(r^2\frac{df\left(r\right)}{dr}\right)=-\frac{1}{Y\left(\theta,\lambda\right)sin{\theta}}\frac{\partial}{\partial\theta}\left(sin{\theta}\frac{\partial Y\left(\theta,\lambda\right)}{\partial\theta}\right)-\frac{1}{Y\left(\theta,\lambda\right){sin}^2{\theta}}\frac{\partial^2Y\left(\theta,\lambda\right)}{\partial\lambda^2}=\alpha
$$
该式中，等号左边只与自变量r有关，右边只与θ和λ有关，既然等号两边依赖于不同的自变量而且又必须相等，则等号两边必须等于同一个常数。取这个常数为α，则可得：
$$
\frac{d}{dr}\left(r^2\frac{df\left(r\right)}{dr}\right)-\alpha f\left(r\right)=0
$$

$$
\frac{1}{sin{\theta}}\frac{\partial}{\partial\theta}\left(sin{\theta}\frac{\partial Y\left(\theta,\lambda\right)}{\partial\theta}\right)+\frac{1}{{sin}^2{\theta}}\frac{\partial^2Y\left(\theta,\lambda\right)}{\partial\lambda^2}+\alpha Y\left(\theta,\lambda\right)=0
$$

对于任意的α≥0，存在非负实数n，使得$\alpha=n\left(n+1\right)$；故式（8）是欧拉型常微分方程，其解：

$f\left(r\right)=r^n,r^{-\left(n+1\right)}$

把（8）式的解带入到 $V\left(r,\theta,\lambda\right)=f\left(r\right)Y\left(\theta,\lambda\right)$中，得到拉普拉斯方程（5）的解为：
$$
V=r^nY\left(\theta,\lambda\right)，V=\frac{Y\left[\theta,\lambda\right]}{r^{n+1}}
$$
我们将看到n不是任意的常数，而必须是正整数0,1,2,…。

如果一个微分方程式为线性，知道它的几个解，那么，这些解的和也是该方程的解。当n取不同的整数值时，方程（8）和（9）的解是特解，考虑到位场的叠加性质，将所有这些特解累加起来，𝑉(𝑟,𝜃,𝜆)的一般表达式可写成：
$$
V_i=\sum_{n=0}^{\infty}r^nY\left(\theta,\lambda\right)
$$

$$
V_e=\sum_{n=0}^{\infty}\frac{Y\left(\theta,\lambda\right)}{r^{n+1}}
$$

这是谐函数，给以某种规定，每个谐函数都可以展开成其中的一种形式。

每个谐函数都可以用球谐函数展开。

一个球内部的调和函数可以用（11）式写出球谐函数展开式；一个球外部的调和函数可以用（12）式写出球谐函数展开式。

下面求解（9）式，设$Y\left(\theta,\lambda\right)=g\left(\theta\right)h\left(\lambda\right)$

函数$g\left(\theta\right)$和$h\left(\theta\right)$都只与一个变量有关，将上式代入（9）并乘以$\frac{sin\theta}{g\left(\theta\right)h\left(\lambda\right)}$,则有：
$$
\frac{sin{\theta}}{g\left(\theta\right)}\left[sin{\theta}g^\pprime\left(\theta\right)+cos{\theta}g^\prime\left(\theta\right)+n\left(n+1\right)sin{\theta}g\left(\theta\right)\right]=-\frac{h^\pprime\left(\lambda\right)}{h\left(\lambda\right)}
$$
等号左边只是θ的函数，与λ无关；右边只是λ的函数，与θ无关。方程两端又只能都是同一个常数记作Λ，上式就被分解为两个常微分方程，即
$$
h^\pprime\left(\lambda\right)+\Lambda h\left(\lambda\right)=0
$$

$$
sin{\theta}g^\pprime\left(\theta\right)+cos{\theta}g^\prime\left(\theta\right)+\left[n\left(n+1\right)sin{\theta}-\frac{\Lambda}{sin{\theta}}\right]g\left(\theta\right)=0
$$

实际上，常微分方程（14）隐含着一个附加条件即“自然的周期条件”，$h\left(\varphi+2\pi\right)=h\left(\varphi\right)$常微分方程（14)和自然周期条件构成本征值问题，

