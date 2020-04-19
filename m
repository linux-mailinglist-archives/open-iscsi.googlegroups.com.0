Return-Path: <open-iscsi+bncBC755V5RXMKBBZEZ6L2AKGQERK265DY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A165B1AFCD8
	for <lists+open-iscsi@lfdr.de>; Sun, 19 Apr 2020 19:39:49 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id m20sf7825489qvy.13
        for <lists+open-iscsi@lfdr.de>; Sun, 19 Apr 2020 10:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=i5d/GTSCzwQdZ6a9wygDvlXTgrEMacjUfOkuSn3LvdI=;
        b=JniY1DidsRQMKgIadusms5U7saLMr4hLxSJPs99C9/+j7ZF1Br8CW/h8CTTjuZMe/D
         nrR3r1p1KA1Whp71tfJ+dT/+mqMHVrMV81pjI1ZL50B4WzYWCtJtn1V7Ifp3L7C2B+7Q
         cuNHLw9ys2mBek7o29m41oaam3jNn2p16yQoRdEpJRbSICXUcFurfIcjCcsEMfSnIv2o
         akoRcnKw+r5GxcPz+qkHnfxWKx5qkukj/rfQ3pHE1m6AXC2DJM9LDreu+RHWNz2XCsVU
         AVfB1KtTtxojibXjcYkcTuMmBR8VQFzkBUBePB4jvruuEI55QauZbDJkE47dN5nFh/it
         zNWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i5d/GTSCzwQdZ6a9wygDvlXTgrEMacjUfOkuSn3LvdI=;
        b=jiIcbsCl47Wp/NApsrCrHo2CWdvRfMDh0Y+VF4YxMGnFvk616YvglZJT4ZXP6BsiKt
         2pcrHo8j5dMHa5uANUhOxHdgCFKhX81sGfqQ2ZvC2zKk4lhkXHeKqQt/qa6E2efST7sK
         W6AUQsyOxCMOKersqfz0EETSAyspBzAEVnVthh+trAK18J+P+IQIc18vrBqYzZXFNgGK
         R1gneDBodEfdLRKDIWIJSFuoR/h+igRTBQGcw3V7pmXDDeDoUXZ1PFprt8xBNC/DtARE
         dIVWPhlwRHpLq7Ge/4Xf3wN3n6x4LO9t2m1n9X96a8XEdGuM6yHV3op/oYk+8iuXi5Nj
         +qkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i5d/GTSCzwQdZ6a9wygDvlXTgrEMacjUfOkuSn3LvdI=;
        b=MzfX8SJKW6OJBSkxAwiK7GYj52ybDJhVHHVNT4GKRCvAqMsVxG4U9vbAP0MyMb+DhJ
         TuRaiMlYmi6OGuajeXdjqXQEZGnPOdxCF17+1Ag/MuyFUfjudGKebylppRoxZxMX1qyW
         SlRlfeMj/WG+cX7oqAYE+n/ifopSia+gQDRF4aaf8moJgn9W4VA3kNVKmIPEtMWxEm+k
         1pI7f57Q9xnx8VBX+H3yXJSfgN+KFaxGWNaeGcxd8WUCtDOiOqR+qcx1xQcshHA1hy09
         dj84k2X97ndpzcxXGX/Ct06OgpQuArt5oWU5uzePkas3K9F9EGHF/Evm2gVSvjBfbtqd
         5cMg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuYUZYFEWsyiJ6kr3Olw3478PUgKSGfupxgNUPAT999zw/tljx3M
	RHTQh+iqIYnHXk1rPmjjzOs=
X-Google-Smtp-Source: APiQypL3Vn1CbygAVnplr91BIoVp2+OxCFpXA2+tFW06ZU1VCAjcjoD94Qb34J3fLd3jCQtBSh4GUw==
X-Received: by 2002:ac8:4c8d:: with SMTP id j13mr6130807qtv.142.1587317988509;
        Sun, 19 Apr 2020 10:39:48 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:468d:: with SMTP id g13ls4238536qto.11.gmail; Sun, 19
 Apr 2020 10:39:48 -0700 (PDT)
X-Received: by 2002:ac8:1b70:: with SMTP id p45mr12707206qtk.258.1587317987795;
        Sun, 19 Apr 2020 10:39:47 -0700 (PDT)
Date: Sun, 19 Apr 2020 10:39:46 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <c4ca6d31-2fe4-4f7f-a822-8b951f8807a5@googlegroups.com>
In-Reply-To: <d6a22a2f-3730-45ee-5256-8a8fe4b017bf@huawei.com>
References: <d6a22a2f-3730-45ee-5256-8a8fe4b017bf@huawei.com>
Subject: Re: [PATCH] open-iscsi:Modify iSCSI shared memory permissions for
 logs
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1082_119807256.1587317986976"
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

------=_Part_1082_119807256.1587317986976
Content-Type: multipart/alternative; 
	boundary="----=_Part_1083_1350088430.1587317986976"

------=_Part_1083_1350088430.1587317986976
Content-Type: text/plain; charset="UTF-8"

On Friday, April 17, 2020 at 2:08:57 AM UTC-7, Wu Bo wrote:
>
> Hi, 
>
> Iscsid log damon is responsible for reading data from shared memory 
> and writing syslog. Iscsid is the root user group. 
> Currently, it is not seen that non-root users need to read logs. 
> The principle of minimizing the use of permissions, all the permissions 
> are changed from 644 to 600. 
>
> Signed-off-by: Wu Bo  ... 
> --- 
>   usr/log.c | 6 +++--- 
>   1 file changed, 3 insertions(+), 3 deletions(-) 
>
> diff --git a/usr/log.c b/usr/log.c 
> index 6e16e7c..2fc1850 100644 
> --- a/usr/log.c 
> +++ b/usr/log.c 
> @@ -73,7 +73,7 @@ static int logarea_init (int size) 
>          logdbg(stderr,"enter logarea_init\n"); 
>
>          if ((shmid = shmget(IPC_PRIVATE, sizeof(struct logarea), 
> -                           0644 | IPC_CREAT | IPC_EXCL)) == -1) { 
> +                           0600 | IPC_CREAT | IPC_EXCL)) == -1) { 
>                  syslog(LOG_ERR, "shmget logarea failed %d", errno); 
>                  return 1; 
>          } 
> @@ -93,7 +93,7 @@ static int logarea_init (int size) 
>                  size = DEFAULT_AREA_SIZE; 
>
>          if ((shmid = shmget(IPC_PRIVATE, size, 
> -                           0644 | IPC_CREAT | IPC_EXCL)) == -1) { 
> +                           0600 | IPC_CREAT | IPC_EXCL)) == -1) { 
>                  syslog(LOG_ERR, "shmget msg failed %d", errno); 
>                  free_logarea(); 
>                  return 1; 
> @@ -114,7 +114,7 @@ static int logarea_init (int size) 
>          la->tail = la->start; 
>
>          if ((shmid = shmget(IPC_PRIVATE, MAX_MSG_SIZE + sizeof(struct 
> logmsg), 
> -                           0644 | IPC_CREAT | IPC_EXCL)) == -1) { 
> +                           0600 | IPC_CREAT | IPC_EXCL)) == -1) { 
>                  syslog(LOG_ERR, "shmget logmsg failed %d", errno); 
>                  free_logarea(); 
>                  return 1; 
> -- 
> 1.8.3.1 
>
>
This looks good to me. Any chance you can make this a pull request for 
open-iscsi/open-iscsi on github? 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/c4ca6d31-2fe4-4f7f-a822-8b951f8807a5%40googlegroups.com.

------=_Part_1083_1350088430.1587317986976
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Friday, April 17, 2020 at 2:08:57 AM UTC-7, Wu Bo wrote=
:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bo=
rder-left: 1px #ccc solid;padding-left: 1ex;">Hi,
<br>
<br>Iscsid log damon is responsible for reading data from shared memory
<br>and writing syslog. Iscsid is the root user group.
<br>Currently, it is not seen that non-root users need to read logs.
<br>The principle of minimizing the use of permissions, all the permissions=
=20
<br>are changed from 644 to 600.
<br>
<br>Signed-off-by: Wu Bo=C2=A0 ...
<br>---
<br>=C2=A0 usr/log.c | 6 +++---
<br>=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)
<br>
<br>diff --git a/usr/log.c b/usr/log.c
<br>index 6e16e7c..2fc1850 100644
<br>--- a/usr/log.c
<br>+++ b/usr/log.c
<br>@@ -73,7 +73,7 @@ static int logarea_init (int size)
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logdbg(stderr,&quot;enter logarea_ini=
t\n&quot;);
<br>
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((shmid =3D shmget(IPC_PRIVATE, si=
zeof(struct logarea),
<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 0644 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 0600 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0syslog(LO=
G_ERR, &quot;shmget logarea failed %d&quot;, errno);
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 1;
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
<br>@@ -93,7 +93,7 @@ static int logarea_init (int size)
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0size =3D =
DEFAULT_AREA_SIZE;
<br>
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((shmid =3D shmget(IPC_PRIVATE, si=
ze,
<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 0644 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 0600 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0syslog(LO=
G_ERR, &quot;shmget msg failed %d&quot;, errno);
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free_loga=
rea();
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 1;
<br>@@ -114,7 +114,7 @@ static int logarea_init (int size)
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0la-&gt;tail =3D la-&gt;start;
<br>
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((shmid =3D shmget(IPC_PRIVATE, MA=
X_MSG_SIZE + sizeof(struct=20
<br>logmsg),
<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 0644 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 0600 | IPC_CREAT | IPC_EXCL)) =3D=3D -1) {
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0syslog(LO=
G_ERR, &quot;shmget logmsg failed %d&quot;, errno);
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free_loga=
rea();
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 1;
<br>--
<br>1.8.3.1
<br>
<br></blockquote><div><br></div><div>This looks good to me. Any chance you =
can make this a pull request for open-iscsi/open-iscsi on github? <br></div=
></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/c4ca6d31-2fe4-4f7f-a822-8b951f8807a5%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/c4ca6d31-2fe4-4f7f-a822-8b951f8807a5%40googlegroups.com</a>.<b=
r />

------=_Part_1083_1350088430.1587317986976--

------=_Part_1082_119807256.1587317986976--
