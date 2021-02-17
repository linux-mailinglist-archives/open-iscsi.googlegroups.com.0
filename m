Return-Path: <open-iscsi+bncBCLLXRGPZMHBBKP2WSAQMGQEVIT5EJI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EE031DCCC
	for <lists+open-iscsi@lfdr.de>; Wed, 17 Feb 2021 16:58:35 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id t207sf8089307oih.6
        for <lists+open-iscsi@lfdr.de>; Wed, 17 Feb 2021 07:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MWZIgOlKrq2MZ0PQh0y8nz9zu6TTfDMYhF0jqUxzTbI=;
        b=YhMajOYtNVxV6uMEY+uFc3CDK2qNgxU8jyME2GSlAXPLfix/c7iWeu2AZIMe8KehFB
         Rmo2znTA/Fdfe2VByD+jlaChL926otOENrCmmlEutM+t+dNDKGrTy78hW1LCpuLFtcLQ
         0zyBbyyWF7XWJdgyGGAB+cgdI0M4seyKuKD0csW5qkQwVnyJ740fqdOWUEmVGQUmqbYO
         B2d3/12VUWtRTRy2jAhGC2sBPMHSSjOeK3HwBeinzTHZUX9da8dFWxe5rtDCWN/LIFFQ
         IwkiWPRYzCRQQpaGyAaIGnmcOmmruzaIKAXaFBmXYR7WF1czJtAkje0Cq6evTr3MWUnt
         xdkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=MWZIgOlKrq2MZ0PQh0y8nz9zu6TTfDMYhF0jqUxzTbI=;
        b=pH1GptOmYK9jmrDOT9/InUm2WmHVi9ZNhqNWMqr8qn3SI79bODytRw4dTwgLrz2Cjc
         /4s18r9PW3mVZhXCyJ9e7sxQbZ5vIzeXPKadY84lz3k0bFx0SnZTlRWb8GZ1DuVECvHF
         gfikzH5owuqyQrNyQbpxHyPskUNWWpgEWxikjaFNsDZlncmqCDc023kbuO7Gz3oBskLF
         OXc2ynFy4zHVv5HPKxk7rERzJPSiHB4KLhIq6IIt30uth3gX8JpFagjHyLroTrO9SijY
         KOl7GB/L14DFJAz2HLhGiE7S6i4MgUJTEgdRfigePuDX3U7ac2RO798EEYr6S3v20/or
         0GGg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531yBuqrlTuKTptLHz209ccG74L2LL/kIKDT3qjGWzogxIdOWxnM
	I7IKOnZOgUvG+UWu34EWCbA=
X-Google-Smtp-Source: ABdhPJwEsF4VuN/p/dVM/RSysC1wpS9yyuoHEz6BnOYIqJbNBAZr03YAJV2L4F3PnxE9hoA98L0ByQ==
X-Received: by 2002:a9d:7447:: with SMTP id p7mr7044227otk.195.1613577513998;
        Wed, 17 Feb 2021 07:58:33 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:2d3:: with SMTP id a19ls651324oid.4.gmail; Wed, 17
 Feb 2021 07:58:33 -0800 (PST)
X-Received: by 2002:aca:ef84:: with SMTP id n126mr5970369oih.109.1613577513628;
        Wed, 17 Feb 2021 07:58:33 -0800 (PST)
Received: by 2002:aca:4ac9:0:b029:f0:c485:3995 with SMTP id x192-20020aca4ac90000b02900f0c4853995msoia;
        Tue, 16 Feb 2021 17:33:53 -0800 (PST)
X-Received: by 2002:a9d:543:: with SMTP id 61mr16911949otw.133.1613525633447;
        Tue, 16 Feb 2021 17:33:53 -0800 (PST)
Date: Tue, 16 Feb 2021 17:33:53 -0800 (PST)
From: Manish Dusane <dusane@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <525126f9-12c3-4c31-9ab4-3d0bfba2f9d6n@googlegroups.com>
Subject: iface.c:36:21: fatal error: libkmod.h: No such file or directory
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8768_1646818015.1613525633307"
X-Original-Sender: dusane@gmail.com
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

------=_Part_8768_1646818015.1613525633307
Content-Type: multipart/alternative; 
	boundary="----=_Part_8769_263493523.1613525633307"

------=_Part_8769_263493523.1613525633307
Content-Type: text/plain; charset="UTF-8"

All,

Trying to compile latest open-iscsi-master on 3.10.0-957.10.1.el7.x86_64
Getting following ilbkmod.h error.  

What am i missing ? 

TIA,
Manish

$ make
make -C libopeniscsiusr
make[1]: Entering directory `<path>/open-iscsi-master/libopeniscsiusr'
cc -O2 -g -Wall -Werror -Wextra -fvisibility=hidden -fPIC    -c -o iface.o 
iface.c
iface.c:36:21: fatal error: libkmod.h: No such file or directory
 #include <libkmod.h>
                     ^
compilation terminated.
make[1]: *** [iface.o] Error 1
make[1]: Leaving directory `<path>/open-iscsi-master/libopeniscsiusr'
make: *** [user] Error 2
$

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/525126f9-12c3-4c31-9ab4-3d0bfba2f9d6n%40googlegroups.com.

------=_Part_8769_263493523.1613525633307
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

All,<div><br></div><div>Trying to compile latest open-iscsi-master on&nbsp;=
3.10.0-957.10.1.el7.x86_64</div><div>Getting following ilbkmod.h error.&nbs=
p;&nbsp;</div><div><br></div><div>What am i missing ?&nbsp;</div><div><br><=
/div><div>TIA,</div><div>Manish<br><div><br></div><div>$ make<div><div>make=
 -C libopeniscsiusr</div><div>make[1]: Entering directory `&lt;path&gt;/ope=
n-iscsi-master/libopeniscsiusr'</div><div>cc -O2 -g -Wall -Werror -Wextra -=
fvisibility=3Dhidden -fPIC&nbsp; &nbsp; -c -o iface.o iface.c</div><div>ifa=
ce.c:36:21: fatal error: libkmod.h: No such file or directory</div><div>&nb=
sp;#include &lt;libkmod.h&gt;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^</div><div>compilation terminated=
.</div><div>make[1]: *** [iface.o] Error 1</div><div>make[1]: Leaving direc=
tory `&lt;path&gt;/open-iscsi-master/libopeniscsiusr'</div><div>make: *** [=
user] Error 2</div><div>$</div></div></div><div><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/525126f9-12c3-4c31-9ab4-3d0bfba2f9d6n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/525126f9-12c3-4c31-9ab4-3d0bfba2f9d6n%40googlegroups.com</a>.=
<br />

------=_Part_8769_263493523.1613525633307--

------=_Part_8768_1646818015.1613525633307--
