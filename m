Return-Path: <open-iscsi+bncBC755V5RXMKBBWX77T2AKGQESELK4LA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 653081B2F86
	for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 20:47:55 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id q43sf15871822qtj.11
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 11:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=A59PXn/JTMN/UUXQHqombJSNb4khPaX3mBckfnfiWw4=;
        b=B93OD3LP5oXbQO2TIPD0BKLvIePfwMp6KpjTiXlCD4Qhl9vpFFrG9SvzYN/ulxwhy2
         ZgCalS7esQfWkcLJszf3w/MIzqhY2nqoInNj9R8hNKLnURDJm7i07z6FgTe7MRcWLoux
         yVPLPYXXzp2g6QdORB5q/mNekqcSieMTNjOX9/HKJugHhfIeybxR5sdbyG3o0EyGxIt1
         gsE/jtg9SsdHPUCUtMRnvzqXufPLq5h8gV3ldrIqiRu3VqUKSoSxs9acdQKCGr1XZNMj
         gmytgTYZocoST5oSTb8RDiUjNYhR8oUrIg4Txiw7t4Lf8V6mKHAxZPTZjyJ8GJvkuOkv
         8l4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A59PXn/JTMN/UUXQHqombJSNb4khPaX3mBckfnfiWw4=;
        b=o1VAbU4KV1vdcA18493rK8VgAcClRubjnR9GqQmnDQ9fow8OOIiXNlHbghApGdJnS/
         vQyWLWEx/4Po2c8gTjec37XSDTQmeihWrdhoAKU1vFvv1zoHk+yCAr4+am39P+kyqLcn
         tcYnSrzcGcGTUF7d0M9yB7tyYYCiBPC86Hz5axT+97DTPal8Ln4i88ivWmHkzCLoigv5
         hddUH9vvVPKYZJ/B9Yon5jfT2OAm4I3bnnPEJLSsMXWNaBK2crMqPychH1T1yuAv/Zme
         Stpn/ZLWQbKbDwBjXI7rqmnavcFa32fZomllctcD4nwPQRdAqL6XJ+xkSY+KbW4zBDgJ
         I4FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A59PXn/JTMN/UUXQHqombJSNb4khPaX3mBckfnfiWw4=;
        b=enyGtiODdXUOtIUqT8UUaFIDZlmVcn9viaNIMq9a95AC8WGxCNjYfphBF0CJRPlBEn
         btTCz4fr3w8waJOsgcQdI7UA2cqixX/nMJoaqfSV3i8WeCFpwFem4rNNpiGFDFAKAuPj
         8QuWqM8NMf7Mdu3A3/3HpKlhVDPm4ycA0I3EEIdYdhj9fCgQwvgi559vLxom8ewHSow4
         5AlqGonBA93FcCtiLQXZenHZlZvf2l8ENxTLA0DEpxZRcke1SWbgCYlQfHTe6D9gx02P
         pfsV9n7SSUHJMPG3spLmpjgiQx5cUuWK/pxkC0XNy7jGwqY5riJD4M1Vzba3rQ6fhrMC
         P4cw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuZrODO0x8tfkYDdutstPx2SN4C/r6va85AjGwFONXsGtxIXxz/r
	RrEiB+FL/BAYZ5clJXRdfNc=
X-Google-Smtp-Source: APiQypLN2O9LmFXoCYOI2LZmWVvDwp/KKp4sQLoJSFtuKroiUr9sNrFzyY4EkiFhI3+8P15jI5NSUA==
X-Received: by 2002:a37:9b0a:: with SMTP id d10mr23368462qke.50.1587494874304;
        Tue, 21 Apr 2020 11:47:54 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:7d4:: with SMTP id bb20ls4924047qvb.3.gmail; Tue,
 21 Apr 2020 11:47:53 -0700 (PDT)
X-Received: by 2002:a05:6214:13cc:: with SMTP id cg12mr21910430qvb.100.1587494873704;
        Tue, 21 Apr 2020 11:47:53 -0700 (PDT)
Date: Tue, 21 Apr 2020 11:47:53 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <a3ff8e76-fa9b-4290-ba20-f3bf43989b66@googlegroups.com>
In-Reply-To: <9D54680A-F97E-4465-BA6C-566562C5DC91@eyeconsultantspc.com>
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
 <9D54680A-F97E-4465-BA6C-566562C5DC91@eyeconsultantspc.com>
Subject: Re: udev events for iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2551_1007443803.1587494873162"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_2551_1007443803.1587494873162
Content-Type: multipart/alternative; 
	boundary="----=_Part_2552_94689266.1587494873163"

------=_Part_2552_94689266.1587494873163
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tuesday, April 21, 2020 at 8:20:23 AM UTC-7, Robert ECEO Townley wrote:
>
> Wondering myself.
>
> On Apr 21, 2020, at 2:31 AM, Gionatan Danti <gionatan.danti@gmail.com>=20
> wrote:
>
> =EF=BB=BF
> [reposting, as the previous one seems to be lost]
>
> Hi all,
> I have a question regarding udev events when using iscsi disks.
>
> By using "udevadm monitor" I can see that events are generated when I=20
> login and logout from an iscsi portal/resource, creating/destroying the=
=20
> relative links under /dev/
>
>
> So running =E2=80=9Cudevadm monitor=E2=80=9D on the initiator, you can se=
e when a block=20
> device becomes available locally.  =20
>
>
>
> However, I can not see anything when the remote machine simple=20
> dies/reboots/disconnects: while "dmesg" shows the iscsi timeout expiring,=
 I=20
> don't see anything about a removed disk (and the links under /dev/ remain=
s=20
> unaltered, indeed). At the same time, when the remote machine and disk=20
> become available again, no reconnection events happen.
>
>
> As someone who has had an inordinate amount of experience with the iSCSi=
=20
> connection breaking ( power outage, Network switch dies,  wrong ethernet=
=20
> cable pulled, the target server machine hardware crashes, ...) in the=20
> middle of production, the more info the better.   Udev event triggers wou=
ld=20
> help.   I wonder exactly how XenServer handles this as it itself seemed=
=20
> more resilient. =20
>
> XenServer host initiators  do something correct to recover and wonder how=
=20
> that compares to the normal iSCSi initiator. =20
>

I was under the impression that XenServer used open-iscsi.

> =20
> But unfortunately, XenServer LVM-over-iSCSi  does not pass the message=20
> along to its Linux virtual drives and VMs in the same way as Windows VMs.=
  =20
> =20
>
> When the target drives became available again,   MS Windows virtual=20
> machines would gracefully recover on their own.    All Linux VM=20
>  filesystems went read only and those VM machines required forceful=20
>  rebooting.   mount remount would not work.=20
>

A filesystem going read-only means it was likely ext3, which does that if=
=20
it gets IO errors, I believe. (Disclaimer: I'm not a filesystem person.)=20

>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/a3ff8e76-fa9b-4290-ba20-f3bf43989b66%40googlegroups.com.

------=_Part_2552_94689266.1587494873163
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, April 21, 2020 at 8:20:23 AM UTC-7, Robert ECE=
O Townley wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"au=
to"><div>Wondering myself.</div><br><div dir=3D"ltr"><blockquote type=3D"ci=
te">On Apr 21, 2020, at 2:31 AM, Gionatan Danti &lt;<a href=3D"mailto:giona=
tan.danti@gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this=
.href=3D&#39;mailto:gionatan.danti@gmail.com&#39;;return true;" onclick=3D"=
this.href=3D&#39;mailto:gionatan.danti@gmail.com&#39;;return true;">gionata=
n.danti@gmail.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=
=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">[reposting, as the pre=
vious one seems to be lost]<br><br>Hi all,<br>I have a question regarding u=
dev events when using iscsi disks.<br><br>By using &quot;udevadm monitor&qu=
ot; I can see that events are generated when I login and logout from an isc=
si portal/resource, creating/destroying the relative links under /dev/<br><=
/div></div></blockquote><div><br></div><div>So running =E2=80=9Cudevadm mon=
itor=E2=80=9D on the initiator, you can see when a block device becomes ava=
ilable locally. =C2=A0=C2=A0</div><div><br></div><br><blockquote type=3D"ci=
te"><div dir=3D"ltr"><div dir=3D"ltr"><br></div></div></blockquote><blockqu=
ote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr">However, I can not see =
anything when the remote machine simple dies/reboots/disconnects: while &qu=
ot;dmesg&quot; shows the iscsi timeout expiring, I don&#39;t see anything a=
bout a removed disk (and the links under /dev/ remains unaltered, indeed). =
At the same time, when the remote machine and disk become available again, =
no reconnection events happen.<br></div></div></blockquote><div><br></div><=
div>As someone who has had an inordinate amount of experience with the iSCS=
i connection breaking ( power outage, Network switch dies, =C2=A0wrong ethe=
rnet cable pulled, the target server machine hardware crashes, ...) in the =
middle of production, the more info the better. =C2=A0 Udev event triggers =
would help. =C2=A0 I wonder exactly how XenServer handles this as it itself=
 seemed more resilient. =C2=A0</div><div><br></div><div>XenServer host init=
iators =C2=A0do something correct to recover and wonder how that compares t=
o the normal iSCSi initiator. =C2=A0</div></div></blockquote><div><br></div=
><div>I was under the impression that XenServer used open-iscsi.<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bord=
er-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"auto"><div>=C2=A0</=
div><div><div>But unfortunately, XenServer LVM-over-iSCSi =C2=A0does not pa=
ss the message along to its Linux virtual drives and VMs in the same way as=
 Windows VMs. =C2=A0 =C2=A0</div><div><br></div><div>When the target drives=
 became available again, =C2=A0 MS Windows virtual machines would gracefull=
y recover on their own. =C2=A0 =C2=A0All Linux VM =C2=A0filesystems went re=
ad only and those VM machines required forceful =C2=A0rebooting. =C2=A0 mou=
nt remount would not work.=C2=A0</div></div></div></blockquote><div><br></d=
iv><div>A filesystem going read-only means it was likely ext3, which does t=
hat if it gets IO errors, I believe. (Disclaimer: I&#39;m not a filesystem =
person.) <br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D=
"auto"><div><br></div><div><br></div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/a3ff8e76-fa9b-4290-ba20-f3bf43989b66%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/a3ff8e76-fa9b-4290-ba20-f3bf43989b66%40googlegroups.com</a>.<b=
r />

------=_Part_2552_94689266.1587494873163--

------=_Part_2551_1007443803.1587494873162--
