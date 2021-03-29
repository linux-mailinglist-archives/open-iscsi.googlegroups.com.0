Return-Path: <open-iscsi+bncBDR7L5OKTAGBBTGURCBQMGQEARGPIBI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA3A34D816
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Mar 2021 21:28:13 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id e2sf10134194otk.8
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Mar 2021 12:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pXMwX4F/jdLdvkgDV1wHv1ZF6bgXBJOIRAFzRgaf5/A=;
        b=PlZ0YdXE4vdY3HIpNjGJynkaHUrZQYMojwslmJP8v9K/RJsBYCPkGOmJMAGYTnpDLv
         K3FDoCPQlTP+NlrhIQSAIuyICIrbLVHcNeoDoPqfgxhyrN9Bk3sicI0luA1wasPCgZ/r
         nZrP5gahsileQerunoyab7yjHxQsAvjaW6E9Wnts+re4ZG5w+KnGhTF9VuxbdonEKTWO
         8BC47JoZUF8o8WiA2HfuUu0BEugHpbPfpailXtWWvFv2MQiTMsPcqUWuUueeQfhq802a
         GuHZHmMMVVwcq6LHOJRlyIwHKYAGneaOK//udaO57FXOUYaimZ1ARXZEVvpkvUGL5Bgp
         b2uQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pXMwX4F/jdLdvkgDV1wHv1ZF6bgXBJOIRAFzRgaf5/A=;
        b=uEB1pXToe5bmE7ydOB2m+pDyvJjDp/IU3s2aEL8yrqEQ408ROBkZMJcdgEqips37sY
         0ePuPU+HL+6Sb1quhneIdujyY/SktLX2q5fONTRPyjdr6LS1uApGD1rE0ZpRlBNeh0B8
         XmECVN+FLvC6GurJ49/bsJr0TjjH32ARFXNPALhmHmz6NSXgEA3h21LOowWpxeTfId6I
         u6Jp+jsZx/MYoXA16K+LKAAkFDHqLeaAjb+GLL3uolxiLr44DbzfUE1nStyDLTiSrBfY
         1+NFWIcT37w8AJFITJYYOOaBCGUATLFTa1z0S3/uZPNO6PSSilYArrhnf970Bs0o8CeX
         QLhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pXMwX4F/jdLdvkgDV1wHv1ZF6bgXBJOIRAFzRgaf5/A=;
        b=teUljlu6GfU8gN7XXAR0t3jxQTr44LS2AG2v43AFEJ4QBe0mK7wBUkW1e3A/3Xwrpg
         bOjt0AsXtJY/8xqIo9lGCn1nKdOmhBjMR5A0F6X1VewVLdqw5vlPPioHKXS+Qsr7yLuZ
         xp0d+oOqrQOl7/xG7cpI5pK8Ct7upYd3IL+fJohkLtq20qMYWczxVCopJxAnwHJFiMNz
         WDtJGsydk0n2d3x4NGmRkR8EVJs1HaoBwmDLnbr2Z/xCwysWLdUHrWFHlPqVUVwihc0E
         OoFUMELueiy45k0+7Qel/uoSRrrM5Tr5mEGJ3jBEMVScoJrJJDMBPRrRL8XxEO2AvuiA
         fmxw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532oDfiDaQseZL0l8+XH8vEjneiDrUDjtsIjN+9jQ0VyWo71Qrqe
	lWeFR7d0hVCv2YG++F+yA6M=
X-Google-Smtp-Source: ABdhPJz/NjKy0i54XNyLNOQnk3UVVE59CTjXsuFtzNFkfi/eJmVn6WDLht2r1Y+AAIEUQFCfjfs4Qw==
X-Received: by 2002:a9d:1ca1:: with SMTP id l33mr23096551ota.368.1617046092258;
        Mon, 29 Mar 2021 12:28:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:60ce:: with SMTP id b14ls4445596otk.4.gmail; Mon, 29 Mar
 2021 12:28:11 -0700 (PDT)
X-Received: by 2002:a9d:68d7:: with SMTP id i23mr24515213oto.133.1617046091620;
        Mon, 29 Mar 2021 12:28:11 -0700 (PDT)
Date: Mon, 29 Mar 2021 12:28:10 -0700 (PDT)
From: "neutro...@gmail.com" <neutronsharc@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <359a4d74-f833-4f77-82f0-76131b018d76n@googlegroups.com>
In-Reply-To: <f76e46dc-f2eb-48fa-8431-f85ee719a181n@googlegroups.com>
References: <f76e46dc-f2eb-48fa-8431-f85ee719a181n@googlegroups.com>
Subject: Re: IO request returns prematurely when iscsi connection is down
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2020_1662771622.1617046090879"
X-Original-Sender: neutronsharc@gmail.com
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

------=_Part_2020_1662771622.1617046090879
Content-Type: multipart/alternative; 
	boundary="----=_Part_2021_877252551.1617046090880"

------=_Part_2021_877252551.1617046090880
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Bound the thread to hopefully catch some attention.

On Friday, February 19, 2021 at 8:28:14 PM UTC-8 neutro...@gmail.com wrote:

> Hello all,
>
> I encounter a weird issue with open-iscsi.  I have a test machine with 50=
0=20
> iscsi volumes backed by an IP san.  The test machine then performs r/w wi=
th=20
> o_direct on those 500 raw block devices.  During the test I trigger a=20
> failure on the IP san so some iscsi connections break.  iscsi client is=
=20
> able to reconnect and recover,  however,  immediately after recovery, =20
>  some iscsi read finds corrupted data.
>
> This issue happens frequently. After a lot of tracing on the IP san=20
> server,  we become sure that those corrupted read requests have never bee=
n=20
> received by iscsi server at IP san.
>
> In the following timeline diagram,  the client generates the read around=
=20
> time t1 when connections are turned down.  iscsi connection recovered at=
=20
> time t2.  The time between t1 and t2 is about 15~20 seconds. Read returns=
=20
> several seconds after t2. =20
>
>                      cut iscsi connections             iscsi connection=
=20
> recoveryed
> ------------------------- t1 -------------------------------------------=
=20
> t2 ---------------------------------->
>
>
> The client machine uses Linux libaio to perform read/write.  The=20
> read/write is performed in the following approach:
>
> - blk devices are opened with O_DIRECT,  io buffer is 4K-aligned,  io=20
> offset is 4K aligned.
> - Call io_submit() to submit requests to blk device.
> - call io_getevents() to wait for completion events.=20
>      * If the status is =E2=80=9CN bytes done=E2=80=9D,  assumes I/O was =
successful.
>      * If the status is =E2=80=9C-1=E2=80=9D, assume IO failure.
>
> Is it possible that,  iscsi layer will mark a blk_read/write completion=
=20
> with 0-bytes done because the connection is not available,  and the upper=
=20
> layer will receive a completion with 0-bytes as the result?
>
> Thank you for reading.
>
>
> -Shawn
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/359a4d74-f833-4f77-82f0-76131b018d76n%40googlegroups.com.

------=_Part_2021_877252551.1617046090880
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Bound the thread to hopefully catch some attention.<br><br><div class=3D"gm=
ail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Friday, February 19, 2=
021 at 8:28:14 PM UTC-8 neutro...@gmail.com wrote:<br/></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rg=
b(204, 204, 204); padding-left: 1ex;">Hello all,<div><br></div><div>I encou=
nter a weird issue with open-iscsi.=C2=A0 I have a test machine with 500 is=
csi volumes backed by an IP san.=C2=A0 The test machine then performs r/w w=
ith o_direct on those 500 raw block devices.=C2=A0 During the test I trigge=
r a failure on the IP san so some iscsi connections break.=C2=A0 iscsi clie=
nt is able to reconnect and recover,=C2=A0 however,=C2=A0 immediately after=
 recovery,=C2=A0 =C2=A0some iscsi read finds corrupted data.</div><div><br>=
</div><div>This issue happens frequently. After a lot of tracing on the IP =
san server,=C2=A0 we become sure that those corrupted read requests have ne=
ver been received by iscsi server at IP san.<br></div><div><br></div><div><=
div>In the following timeline diagram,=C2=A0 the client generates the read =
around time t1 when connections are turned down.=C2=A0 iscsi connection rec=
overed at time t2.=C2=A0 The time between t1 and t2 is about 15~20 seconds.=
 Read returns several seconds after t2.=C2=A0=C2=A0</div><div><br></div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0cut iscsi connections=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0isc=
si connection recoveryed</div><div>------------------------- t1 -----------=
-------------------------------- t2 ----------------------------------&gt;<=
/div><div><br></div><div><br></div></div><div>The client machine uses Linux=
 libaio to perform read/write.=C2=A0 The read/write is performed in the fol=
lowing approach:</div><div><br></div><div>- blk devices are opened with O_D=
IRECT,=C2=A0 io buffer is 4K-aligned,=C2=A0 io offset is 4K aligned.</div><=
div>- Call io_submit() to submit requests to blk device.</div><div>- call i=
o_getevents() to wait for completion events.=C2=A0</div><div>=C2=A0 =C2=A0 =
=C2=A0* If the status is =E2=80=9CN bytes done=E2=80=9D,=C2=A0 assumes I/O =
was successful.</div><div>=C2=A0 =C2=A0 =C2=A0* If the status is =E2=80=9C-=
1=E2=80=9D, assume IO failure.</div><div><br></div><div>Is it possible that=
,=C2=A0 iscsi layer will mark a blk_read/write completion with 0-bytes done=
 because the connection is not available,=C2=A0 and the upper layer will re=
ceive a completion with 0-bytes as the result?<br></div><div><br></div><div=
>Thank you for reading.</div><div><br></div><div><br></div><div>-Shawn</div=
><div><br></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/359a4d74-f833-4f77-82f0-76131b018d76n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/359a4d74-f833-4f77-82f0-76131b018d76n%40googlegroups.com</a>.=
<br />

------=_Part_2021_877252551.1617046090880--

------=_Part_2020_1662771622.1617046090879--
