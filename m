Return-Path: <open-iscsi+bncBCEJDZGXJAINZKXK6ACRUBCM36YOK@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E1C1384AD
	for <lists+open-iscsi@lfdr.de>; Sun, 12 Jan 2020 04:41:17 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id u11sf4069190qvo.8
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Jan 2020 19:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Hwky+shyAMV9f6AHqRHtPYBsSAImlq9rkdu3unCo3pM=;
        b=XYLcwZ3QIUX9/33//PG6V332BS2ZhtLGI/oVaSz9kLDiDzRwm+yKBMZYy3UhkcK0Ut
         dzQy9mxslkvLmcfc4nFv4saE3ldG56BGIwaZHcDCAdJKVjgti0T1uJTFS/EPSc+I8rsa
         y7n6B9hGw5fN1FTd6Y7vv4qfxgizESEOd2JHeQ0pfFguUTCjQZRdtccbXY8YbF+cbd0F
         9TKRj5PsmReWigFoex/57/VfYaoO2x4+CuRC8BnwTBiVG6njw9slwh1Hv9rRY57K/iBI
         m9u/6WIHTJhOFUwqA5PLLNuECDRA5TNmcAxBq/lhkAp3Ed+k/DDX36qGbCbo848qqlA5
         q3LA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hwky+shyAMV9f6AHqRHtPYBsSAImlq9rkdu3unCo3pM=;
        b=uXCO0GlaC+04S0IIAQikmEdtFu0hNL2zfFn1uSVbjU22rZcv6HG1cvXelz9VhDXZBR
         BAUO4ore65yMU6pbDxNu76rieTQfq+a50mKqQALgPuoWOzs74+RJLMkToHga43iQISy/
         TnjjghFb0BczPxgKXNFs846IfqdpMwNIkKtjVyOT/z9JLaeZgW/nLn29AhQaFA7voG0t
         SA//YPF3X/PF6xw6MK9kaeFwZrHrC+El3Z52KnkF5L8Uw6akYKTFW7vDBT4PScR6Mdjj
         Kz0o+zBid//md2hnk7lGoIHy2yxLOBq5bA+YBY+CB55BGIunaR303QwkBts/c0QsMXmf
         NHoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hwky+shyAMV9f6AHqRHtPYBsSAImlq9rkdu3unCo3pM=;
        b=NQoZbbdUCGPmrQeMCQ7VvZksydLvRBx97MbNtb6IxW9lCZlG14GCkdiv1iOhuNVPx2
         bawi/o9r0OXJsMy0OHwnNP0fwYpmpNuG+oEne2Z5BHraH45Lb64Vxic5lWEDlxPjDyAM
         PL/BdYiSU2+dqXqUNM9bTngrPKLQoHcSO6ZU3RwiNyajf1mZNbPLEqFD6KH6VqIr2wQA
         XBLd6zIRiHm2f2xoruIx7lOTxLnRuhB6wr4FaPVGcFUDsf5iuIqb3I7x2D/ymUb+ApSf
         NNl725WMya/8UjIoXM2nk9yaj/w0UDIWiX4L2Owa2SSQSJUKLGa0QQQKUBJLjl56lp5p
         yHBg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAV6kCPKYwqPEhVXqdlvD6bifhxqRF9XzmmwaBaTNHerKPvJY0cm
	RH6efrkLQzqReVDdhL/bIOM=
X-Google-Smtp-Source: APXvYqzwGD1lC7eT1LP2e42X4F67kbjTKNKuawIh4LeyuZ1Au1+IYx48mEc1z88W2JRRHqKfniZ5Iw==
X-Received: by 2002:a0c:e58a:: with SMTP id t10mr6028749qvm.161.1578800476499;
        Sat, 11 Jan 2020 19:41:16 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:108:: with SMTP id e8ls689902qtg.4.gmail; Sat, 11 Jan
 2020 19:41:16 -0800 (PST)
X-Received: by 2002:aed:29e1:: with SMTP id o88mr9379926qtd.182.1578800476075;
        Sat, 11 Jan 2020 19:41:16 -0800 (PST)
Date: Sat, 11 Jan 2020 19:41:15 -0800 (PST)
From: can zhu <zhucan.k8s@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <8d2b9751-309c-41b2-8261-4dcb0b03905a@googlegroups.com>
In-Reply-To: <6BF4CC94-0C36-4E65-B8FB-98BFBB51FC92@gmail.com>
References: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
 <b7141d18-99d9-4d93-9252-a5e27393dfc6@googlegroups.com>
 <4d5aa484-fa9a-4d62-9206-5d5737684109@googlegroups.com>
 <57585076-3602-47C4-92CD-5510CA87E4EF@gmail.com>
 <6769914f-f770-495b-886e-7dcc5569274d@googlegroups.com>
 <1EB02856-CF99-4B41-A6B0-7A89350162E3@gmail.com>
 <CAGJK1K=VYnVrTy+Gync5o2dP+_afwMSdP3-SRgTskz8Q-MPOUA@mail.gmail.com>
 <6BF4CC94-0C36-4E65-B8FB-98BFBB51FC92@gmail.com>
Subject: Re: Who know more about this issue for iscsid?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1268_844023518.1578800475576"
X-Original-Sender: zhucan.k8s@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_1268_844023518.1578800475576
Content-Type: multipart/alternative; 
	boundary="----=_Part_1269_423838013.1578800475576"

------=_Part_1269_423838013.1578800475576
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Our storage SDK API, I will take a look at the target config and paste it.

=E5=9C=A8 2020=E5=B9=B41=E6=9C=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E6=97=A5 UTC=
+8=E4=B8=8A=E5=8D=8811:33:51=EF=BC=8CThe Lee-Man=E5=86=99=E9=81=93=EF=BC=9A
>
> On Jan 11, 2020, at 7:28 PM, can zhu <zhuc...@gmail.com <javascript:>>=20
> wrote:
>
>
> For the initiator.
>
>
> Then who set up your targets, and how are they set up?
>
>
> Lee Duncan <leeman...@gmail.com <javascript:>> =E4=BA=8E2020=E5=B9=B41=E6=
=9C=8812=E6=97=A5=E5=91=A8=E6=97=A5 =E4=B8=8A=E5=8D=8811:16=E5=86=99=E9=81=
=93=EF=BC=9A
>
>>
>>
>> On Jan 11, 2020, at 7:15 PM, can zhu <zhuc...@gmail.com <javascript:>>=
=20
>> wrote:
>>
>> Hmmm, I use the default config, I hadn't do other sets for it.
>>
>>
>> For? For the initiator, or the target?
>>
>>
>>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/8d2b9751-309c-41b2-8261-4dcb0b03905a%40googlegroups.com.

------=_Part_1269_423838013.1578800475576
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Our storage SDK API, I will take a look at the target conf=
ig and paste it.<br><br>=E5=9C=A8 2020=E5=B9=B41=E6=9C=8812=E6=97=A5=E6=98=
=9F=E6=9C=9F=E6=97=A5 UTC+8=E4=B8=8A=E5=8D=8811:33:51=EF=BC=8CThe Lee-Man=
=E5=86=99=E9=81=93=EF=BC=9A<blockquote class=3D"gmail_quote" style=3D"margi=
n: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><di=
v style=3D"word-wrap:break-word;line-break:after-white-space">On Jan 11, 20=
20, at 7:28 PM, can zhu &lt;<a href=3D"javascript:" target=3D"_blank" gdf-o=
bfuscated-mailto=3D"OrO7k1L3DwAJ" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascri=
pt:&#39;;return true;">zhuc...@gmail.com</a>&gt; wrote:<br><div><blockquote=
 type=3D"cite"><br><div><div dir=3D"ltr">For the initiator.</div></div></bl=
ockquote><div><br></div>Then who set up your targets, and how are they set =
up?</div><div><br><blockquote type=3D"cite"><div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr">Lee Duncan &lt;<a href=3D"javascript:" target=3D"_bla=
nk" gdf-obfuscated-mailto=3D"OrO7k1L3DwAJ" rel=3D"nofollow" onmousedown=3D"=
this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39=
;javascript:&#39;;return true;">leeman...@gmail.com</a>&gt; =E4=BA=8E2020=
=E5=B9=B41=E6=9C=8812=E6=97=A5=E5=91=A8=E6=97=A5 =E4=B8=8A=E5=8D=8811:16=E5=
=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div><br><div><br><blockquote type=3D"cite"><div>On Jan 11, 2020=
, at 7:15 PM, can zhu &lt;<a href=3D"javascript:" target=3D"_blank" gdf-obf=
uscated-mailto=3D"OrO7k1L3DwAJ" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascri=
pt:&#39;;return true;">zhuc...@gmail.com</a>&gt; wrote:</div><br><div><div =
dir=3D"ltr">Hmmm, I use the default config, I hadn&#39;t do other sets for =
it.<br></div></div></blockquote><div><br></div>For? For the initiator, or t=
he target?</div><div><br><blockquote type=3D"cite"><div><div dir=3D"ltr"><b=
r></div></div></blockquote></div></div></blockquote></div></div></blockquot=
e></div><br></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8d2b9751-309c-41b2-8261-4dcb0b03905a%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/8d2b9751-309c-41b2-8261-4dcb0b03905a%40googlegroups.com</a>.<b=
r />

------=_Part_1269_423838013.1578800475576--

------=_Part_1268_844023518.1578800475576--
