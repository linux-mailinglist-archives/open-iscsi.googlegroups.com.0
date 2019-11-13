Return-Path: <open-iscsi+bncBDNMFOGN4UHBBUWYW3XAKGQEPNOFB7A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A10FCECB
	for <lists+open-iscsi@lfdr.de>; Thu, 14 Nov 2019 20:34:43 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id c32sf4726897qtb.14
        for <lists+open-iscsi@lfdr.de>; Thu, 14 Nov 2019 11:34:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ReFPeee4U4TiA4/pIcJp53ChiQU7OKe4IeD1A0kmV+I=;
        b=KFPvjwNy2DmkuH/kURIGWH69878iRwtP/7vQlx2cx89uR1/cw048z32Ultjy76zBJW
         F6xqp7LzDuEL0ekWr58crSL0ZZRm/ovKt7HLGbq47wmm9HlXc9zRYPUKNqQuq3vDEfCk
         n+QSYwlZlmzr9TZBJk5DeErIbVXjmCTjIlIgq6b0KZzFZX3C/M7XfCb0LsFUfMjMIHAN
         CUCKb61JuvPqZGm5YFO2zJzTVrxotnGmO/PRvXhJfHDDgqiX3ltICsyA/xP6IMorgU5W
         WD2UeNYnapMtLl3CTBEUjryrmV+4hXNwOwZ35Jqqdww/ZfsGg1MoLFiUX+jXPQtGmXHE
         ysVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ReFPeee4U4TiA4/pIcJp53ChiQU7OKe4IeD1A0kmV+I=;
        b=g+gFGJG1lo5LxPfCg/zX0AiolGVPSVvnzB6d8zwcdYzAcoiCuMXQqZEg3pORi4Clm2
         JNXLcsbhJ4X5NAc69yrMqDfSV/mXCVlEfKncKJuupi2JrjlJlLVuXLPckOIk3utXrOGP
         FJXhIaSOfyD27Xpq4mVhI+msqhudez6gD8FUMlhkoj70Zx1s3lz3HkkkOf+gUdl+mv/f
         lZkDyk/T1XnRpan77ddZPgjobPQRYFanCIABDYPNGCaF4LBXjClhnuCZOnqNgo1a/zD3
         t+n86poDFuutor+Db2nc/ChXYO7L955IdeQ3kzqGWgv7cIdCuZU9Yh6FCeAMc8Dp8r1m
         6i0g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWtWEcM9OSyI25e3muO7odd2/vf9DfwvTtBLnlJZT7p4F94rzaA
	K9mbZr+RKHhgmQp4HXhC5eg=
X-Google-Smtp-Source: APXvYqwFs0hAOSqnOLXQIiUF73DR+cX173+f+SgfjhgRaKD9xRAbdoKyNznS/Ja7QPfCLH8M/g8V+Q==
X-Received: by 2002:a0c:8506:: with SMTP id n6mr5611367qva.87.1573760082288;
        Thu, 14 Nov 2019 11:34:42 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:2786:: with SMTP id n128ls1262536qkn.0.gmail; Thu, 14
 Nov 2019 11:34:42 -0800 (PST)
X-Received: by 2002:a37:47d7:: with SMTP id u206mr9208888qka.42.1573760082128;
        Thu, 14 Nov 2019 11:34:42 -0800 (PST)
Received: by 2002:a37:558:0:0:0:0:0 with SMTP id 85msqkf;
        Wed, 13 Nov 2019 15:10:38 -0800 (PST)
X-Received: by 2002:ac8:2247:: with SMTP id p7mr5454032qtp.180.1573686637543;
        Wed, 13 Nov 2019 15:10:37 -0800 (PST)
Date: Wed, 13 Nov 2019 15:10:37 -0800 (PST)
From: soruk42@gmail.com
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <5405214f-8249-4371-b29e-25f18ad1cfae@googlegroups.com>
In-Reply-To: <dcc19c5c-3a44-434f-b648-324007f4130a@googlegroups.com>
References: <dcc19c5c-3a44-434f-b648-324007f4130a@googlegroups.com>
Subject: Re: Could not logout of all requested sessions when working with
 centos 7
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5580_81516806.1573686637364"
X-Original-Sender: soruk42@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_5580_81516806.1573686637364
Content-Type: multipart/alternative; 
	boundary="----=_Part_5581_435853760.1573686637364"

------=_Part_5581_435853760.1573686637364
Content-Type: text/plain; charset="UTF-8"

Hi,

I ran into this same problem (and found this thread while googling for it), 
and compared CentOS 6 and 7 settings.

The fix, for me, was to edit /etc/iscsi/iscsid.conf and change the line

iscsid.safe_logout = Yes

... to = No

Then: systemctl restart iscsid.service

After that, the logout worked. (And, multipath did the right thing!)

Optionally, put the setting back to "Yes" afterwards and restart iscsid 
again.

-- Michael

On Friday, 7 November 2014 06:56:17 UTC, Shay Katz wrote:
>
> Hi
>
> I have client (centos 7) with logged in sessions,
>
>  
>
> [root@lgdrm1027 ~]# iscsiadm -m session
>
> tcp: [1] 10.206.12.5:3260,1 iqn.2008-05.com.xtremio:001e679efc4a 
> (non-flash)
>
> tcp: [2] 10.205.12.5:3260,1 iqn.2008-05.com.xtremio:001e679efc4a 
> (non-flash)
>
> tcp: [3] 10.206.12.6:3260,1 iqn.2008-05.com.xtremio:001e679efc4b 
> (non-flash)
>
> tcp: [4] 10.205.12.6:3260,1 iqn.2008-05.com.xtremio:001e679efc4b 
> (non-flash)
>
> tcp: [5] 10.206.12.15:3260,1 iqn.2008-05.com.xtremio:001e679efff6 
> (non-flash)
>
> tcp: [6] 10.205.12.15:3260,1 iqn.2008-05.com.xtremio:001e679efff6 
> (non-flash)
>
> tcp: [7] 10.206.12.16:3260,1 iqn.2008-05.com.xtremio:001e679efff7 
> (non-flash)
>
> tcp: [8] 10.205.12.16:3260,1 iqn.2008-05.com.xtremio:001e679efff7 
> (non-flash)
>
>  
>
> After logging in the user remove the portals from the target, now when I 
> am trying to logged out the operation fails
>
> And I didn't find how to remove them (There is no force flag):
>
>  
>
> [root@lgdrm1027 ~]# iscsiadm -m node -u
>
> Logging out of session [sid: 1, target: 
> iqn.2008-05.com.xtremio:001e679efc4a, portal: 10.206.12.5,3260]
>
> Logging out of session [sid: 2, target: 
> iqn.2008-05.com.xtremio:001e679efc4a, portal: 10.205.12.5,3260]
>
> Logging out of session [sid: 3, target: 
> iqn.2008-05.com.xtremio:001e679efc4b, portal: 10.206.12.6,3260]
>
> Logging out of session [sid: 4, target: 
> iqn.2008-05.com.xtremio:001e679efc4b, portal: 10.205.12.6,3260]
>
> Logging out of session [sid: 5, target: 
> iqn.2008-05.com.xtremio:001e679efff6, portal: 10.206.12.15,3260]
>
> Logging out of session [sid: 6, target: 
> iqn.2008-05.com.xtremio:001e679efff6, portal: 10.205.12.15,3260]
>
> Logging out of session [sid: 7, target: 
> iqn.2008-05.com.xtremio:001e679efff7, portal: 10.206.12.16,3260]
>
> Logging out of session [sid: 8, target: 
> iqn.2008-05.com.xtremio:001e679efff7, portal: 10.205.12.16,3260]
>
> iscsiadm: Could not logout of [sid: 1, target: 
> iqn.2008-05.com.xtremio:001e679efc4a, portal: 10.206.12.5,3260].
>
> iscsiadm: initiator reported error (9 - internal error)
>
> iscsiadm: Could not logout of [sid: 2, target: 
> iqn.2008-05.com.xtremio:001e679efc4a, portal: 10.205.12.5,3260].
>
> iscsiadm: initiator reported error (2 - session not found)
>
> iscsiadm: Could not logout of [sid: 3, target: 
> iqn.2008-05.com.xtremio:001e679efc4b, portal: 10.206.12.6,3260].
>
> iscsiadm: initiator reported error (2 - session not found)
>
> iscsiadm: Could not logout of [sid: 4, target: 
> iqn.2008-05.com.xtremio:001e679efc4b, portal: 10.205.12.6,3260].
>
> iscsiadm: initiator reported error (2 - session not found)
>
> iscsiadm: Could not logout of [sid: 5, target: 
> iqn.2008-05.com.xtremio:001e679efff6, portal: 10.206.12.15,3260].
>
> iscsiadm: initiator reported error (2 - session not found)
>
> iscsiadm: Could not logout of [sid: 6, target: 
> iqn.2008-05.com.xtremio:001e679efff6, portal: 10.205.12.15,3260].
>
> iscsiadm: initiator reported error (2 - session not found)
>
> iscsiadm: Could not logout of [sid: 7, target: 
> iqn.2008-05.com.xtremio:001e679efff7, portal: 10.206.12.16,3260].
>
> iscsiadm: initiator reported error (2 - session not found)
>
> iscsiadm: Could not logout of [sid: 8, target: 
> iqn.2008-05.com.xtremio:001e679efff7, portal: 10.205.12.16,3260].
>
> iscsiadm: initiator reported error (2 - session not found)
>
> iscsiadm: Could not logout of all requested sessions
>
> [root@lgdrm1027 ~]#
>
> *same scenario on centos 6.5 worked well.*
> *Shay*
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5405214f-8249-4371-b29e-25f18ad1cfae%40googlegroups.com.

------=_Part_5581_435853760.1573686637364
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I ran into this same pro=
blem (and found this thread while googling for it), and compared CentOS 6 a=
nd 7 settings.</div><div><br></div><div>The fix, for me, was to edit /etc/i=
scsi/iscsid.conf and change the line</div><div><br></div><div>iscsid.safe_l=
ogout =3D Yes</div><div><br></div><div>... to =3D No</div><div><br></div><d=
iv>Then: systemctl restart iscsid.service</div><div><br></div><div>After th=
at, the logout worked. (And, multipath did the right thing!)</div><div><br>=
</div><div>Optionally, put the setting back to &quot;Yes&quot; afterwards a=
nd restart iscsid again.</div><div><br></div><div>-- Michael<br></div><br>O=
n Friday, 7 November 2014 06:56:17 UTC, Shay Katz  wrote:<blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;"><div dir=3D"ltr"><p class=3D"MsoNormal"><span s=
tyle=3D"color:rgb(31,73,125)">Hi</span></p><p class=3D"MsoNormal"><span sty=
le=3D"color:rgb(31,73,125)">I have client (centos 7) with logged in session=
s,</span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=
=C2=A0</span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)=
">[root@lgdrm1027 ~]# iscsiadm -m session</span></p><p class=3D"MsoNormal">=
<span style=3D"color:rgb(31,73,125)">tcp: [1] <a href=3D"http://10.206.12.5=
:3260" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;h=
ttp://www.google.com/url?q\x3dhttp%3A%2F%2F10.206.12.5%3A3260\x26sa\x3dD\x2=
6sntz\x3d1\x26usg\x3dAFQjCNE6vnQrlVsIrZ47k6WoblUlFH7EKA&#39;;return true;" =
onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F10.=
206.12.5%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNE6vnQrlVsIrZ47k6Wob=
lUlFH7EKA&#39;;return true;">10.206.12.5:3260</a>,1 iqn.2008-05.com.xtremio=
:<wbr>001e679efc4a (non-flash)</span></p><p class=3D"MsoNormal"><span style=
=3D"color:rgb(31,73,125)">tcp: [2] <a href=3D"http://10.205.12.5:3260" targ=
et=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.g=
oogle.com/url?q\x3dhttp%3A%2F%2F10.205.12.5%3A3260\x26sa\x3dD\x26sntz\x3d1\=
x26usg\x3dAFQjCNFUjSPXfGSNXOu9_0BIgKNT-Z5RCQ&#39;;return true;" onclick=3D"=
this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F10.205.12.5%3A=
3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFUjSPXfGSNXOu9_0BIgKNT-Z5RCQ&#=
39;;return true;">10.205.12.5:3260</a>,1 iqn.2008-05.com.xtremio:<wbr>001e6=
79efc4a (non-flash)</span></p><p class=3D"MsoNormal"><span style=3D"color:r=
gb(31,73,125)">tcp: [3] <a href=3D"http://10.206.12.6:3260" target=3D"_blan=
k" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F10.206.12.6%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNER1R4PcKuYVX1S3ZaxyKKH6GUz9Q&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F10.206.12.6%3A3260\x26s=
a\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNER1R4PcKuYVX1S3ZaxyKKH6GUz9Q&#39;;retur=
n true;">10.206.12.6:3260</a>,1 iqn.2008-05.com.xtremio:<wbr>001e679efc4b (=
non-flash)</span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,=
125)">tcp: [4] <a href=3D"http://10.205.12.6:3260" target=3D"_blank" rel=3D=
"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dh=
ttp%3A%2F%2F10.205.12.6%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEG_A=
Rvv6s0oM9QRFGRlRb3vGbB7A&#39;;return true;" onclick=3D"this.href=3D&#39;htt=
p://www.google.com/url?q\x3dhttp%3A%2F%2F10.205.12.6%3A3260\x26sa\x3dD\x26s=
ntz\x3d1\x26usg\x3dAFQjCNEG_ARvv6s0oM9QRFGRlRb3vGbB7A&#39;;return true;">10=
.205.12.6:3260</a>,1 iqn.2008-05.com.xtremio:<wbr>001e679efc4b (non-flash)<=
/span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">tcp: =
[5] <a href=3D"http://10.206.12.15:3260" target=3D"_blank" rel=3D"nofollow"=
 onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%=
2F10.206.12.15%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFJsWxnpLxpz1i=
AweCLbNXhvyBlqQ&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.g=
oogle.com/url?q\x3dhttp%3A%2F%2F10.206.12.15%3A3260\x26sa\x3dD\x26sntz\x3d1=
\x26usg\x3dAFQjCNFJsWxnpLxpz1iAweCLbNXhvyBlqQ&#39;;return true;">10.206.12.=
15:3260</a>,1 iqn.2008-05.com.xtremio:<wbr>001e679efff6 (non-flash)</span><=
/p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">tcp: [6] <a =
href=3D"http://10.205.12.15:3260" target=3D"_blank" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F10.20=
5.12.15%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEF_kPr3beaZUYOj5gyZT=
CZEW4FZg&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google.c=
om/url?q\x3dhttp%3A%2F%2F10.205.12.15%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg=
\x3dAFQjCNEF_kPr3beaZUYOj5gyZTCZEW4FZg&#39;;return true;">10.205.12.15:3260=
</a>,1 iqn.2008-05.com.xtremio:<wbr>001e679efff6 (non-flash)</span></p><p c=
lass=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">tcp: [7] <a href=3D=
"http://10.206.12.16:3260" target=3D"_blank" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F10.206.12.=
16%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEr5EcxZ78kpHRwcgiEQs_95jU=
-Kg&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google.com/ur=
l?q\x3dhttp%3A%2F%2F10.206.12.16%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEr5EcxZ78kpHRwcgiEQs_95jU-Kg&#39;;return true;">10.206.12.16:3260</a>,=
1 iqn.2008-05.com.xtremio:<wbr>001e679efff7 (non-flash)</span></p><p class=
=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">tcp: [8] <a href=3D"htt=
p://10.205.12.16:3260" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"th=
is.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F10.205.12.16%3A3=
260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFdZZ8Vph4jR9an21HhUwF26kcpGg&#3=
9;;return true;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3=
dhttp%3A%2F%2F10.205.12.16%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNF=
dZZ8Vph4jR9an21HhUwF26kcpGg&#39;;return true;">10.205.12.16:3260</a>,1 iqn.=
2008-05.com.xtremio:<wbr>001e679efff7 (non-flash)</span></p><p class=3D"Mso=
Normal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span></p><p class=3D"M=
soNormal"><span style=3D"color:rgb(31,73,125)">After logging in the user re=
move the portals from the target, now when I am trying to logged out the op=
eration fails</span></p><p class=3D"MsoNormal"><font color=3D"#1f497d">And =
I=C2=A0didn&#39;t=C2=A0find how to remove them (There is no force flag):</f=
ont></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0<=
/span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">[root=
@lgdrm1027 ~]# iscsiadm -m node -u</span></p><p class=3D"MsoNormal"><span s=
tyle=3D"color:rgb(31,73,125)">Logging out of session [sid: 1, target: iqn.2=
008-05.com.xtremio:<wbr>001e679efc4a, portal: 10.206.12.5,3260]</span></p><=
p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Logging out of s=
ession [sid: 2, target: iqn.2008-05.com.xtremio:<wbr>001e679efc4a, portal: =
10.205.12.5,3260]</span></p><p class=3D"MsoNormal"><span style=3D"color:rgb=
(31,73,125)">Logging out of session [sid: 3, target: iqn.2008-05.com.xtremi=
o:<wbr>001e679efc4b, portal: 10.206.12.6,3260]</span></p><p class=3D"MsoNor=
mal"><span style=3D"color:rgb(31,73,125)">Logging out of session [sid: 4, t=
arget: iqn.2008-05.com.xtremio:<wbr>001e679efc4b, portal: 10.205.12.6,3260]=
</span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Logg=
ing out of session [sid: 5, target: iqn.2008-05.com.xtremio:<wbr>001e679eff=
f6, portal: 10.206.12.15,3260]</span></p><p class=3D"MsoNormal"><span style=
=3D"color:rgb(31,73,125)">Logging out of session [sid: 6, target: iqn.2008-=
05.com.xtremio:<wbr>001e679efff6, portal: 10.205.12.15,3260]</span></p><p c=
lass=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Logging out of sess=
ion [sid: 7, target: iqn.2008-05.com.xtremio:<wbr>001e679efff7, portal: 10.=
206.12.16,3260]</span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(3=
1,73,125)">Logging out of session [sid: 8, target: iqn.2008-05.com.xtremio:=
<wbr>001e679efff7, portal: 10.205.12.16,3260]</span></p><p class=3D"MsoNorm=
al"><span style=3D"color:rgb(31,73,125)">iscsiadm: Could not logout of [sid=
: 1, target: iqn.2008-05.com.xtremio:<wbr>001e679efc4a, portal: 10.206.12.5=
,3260].</span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125=
)">iscsiadm: initiator reported error (9 - internal error)</span></p><p cla=
ss=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">iscsiadm: Could not l=
ogout of [sid: 2, target: iqn.2008-05.com.xtremio:<wbr>001e679efc4a, portal=
: 10.205.12.5,3260].</span></p><p class=3D"MsoNormal"><span style=3D"color:=
rgb(31,73,125)">iscsiadm: initiator reported error (2 - session not found)<=
/span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">iscsi=
adm: Could not logout of [sid: 3, target: iqn.2008-05.com.xtremio:<wbr>001e=
679efc4b, portal: 10.206.12.6,3260].</span></p><p class=3D"MsoNormal"><span=
 style=3D"color:rgb(31,73,125)">iscsiadm: initiator reported error (2 - ses=
sion not found)</span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(3=
1,73,125)">iscsiadm: Could not logout of [sid: 4, target: iqn.2008-05.com.x=
tremio:<wbr>001e679efc4b, portal: 10.205.12.6,3260].</span></p><p class=3D"=
MsoNormal"><span style=3D"color:rgb(31,73,125)">iscsiadm: initiator reporte=
d error (2 - session not found)</span></p><p class=3D"MsoNormal"><span styl=
e=3D"color:rgb(31,73,125)">iscsiadm: Could not logout of [sid: 5, target: i=
qn.2008-05.com.xtremio:<wbr>001e679efff6, portal: 10.206.12.15,3260].</span=
></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">iscsiadm: =
initiator reported error (2 - session not found)</span></p><p class=3D"MsoN=
ormal"><span style=3D"color:rgb(31,73,125)">iscsiadm: Could not logout of [=
sid: 6, target: iqn.2008-05.com.xtremio:<wbr>001e679efff6, portal: 10.205.1=
2.15,3260].</span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73=
,125)">iscsiadm: initiator reported error (2 - session not found)</span></p=
><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">iscsiadm: Coul=
d not logout of [sid: 7, target: iqn.2008-05.com.xtremio:<wbr>001e679efff7,=
 portal: 10.206.12.16,3260].</span></p><p class=3D"MsoNormal"><span style=
=3D"color:rgb(31,73,125)">iscsiadm: initiator reported error (2 - session n=
ot found)</span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,1=
25)">iscsiadm: Could not logout of [sid: 8, target: iqn.2008-05.com.xtremio=
:<wbr>001e679efff7, portal: 10.205.12.16,3260].</span></p><p class=3D"MsoNo=
rmal"><span style=3D"color:rgb(31,73,125)">iscsiadm: initiator reported err=
or (2 - session not found)</span></p><p class=3D"MsoNormal"><span style=3D"=
color:rgb(31,73,125)">iscsiadm: Could not logout of all requested sessions<=
/span></p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">[root=
@lgdrm1027 ~]#</span></p><p class=3D"MsoNormal"><b><span style=3D"color:rgb=
(31,73,125)">same scenario on centos 6.5 worked well.</span></b></p><div><b=
><span style=3D"color:rgb(31,73,125)">Shay</span></b></div></div></blockquo=
te></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/5405214f-8249-4371-b29e-25f18ad1cfae%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/5405214f-8249-4371-b29e-25f18ad1cfae%40googlegroups.com</a>.<b=
r />

------=_Part_5581_435853760.1573686637364--

------=_Part_5580_81516806.1573686637364--
