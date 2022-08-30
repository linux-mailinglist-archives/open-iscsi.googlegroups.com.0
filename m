Return-Path: <open-iscsi+bncBC755V5RXMKBBEOFXKMAMGQELHBDRQI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 881C45A7200
	for <lists+open-iscsi@lfdr.de>; Wed, 31 Aug 2022 01:51:47 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id h20-20020a05620a245400b006bb0c6074basf10392202qkn.6
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Aug 2022 16:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:sender:from:to:cc;
        bh=GnzpTJYLYjgfJzFWL2are7oYWJtHkB84Nvbb6hJrLKc=;
        b=tvwH9uuSl9NELjZskarobexGm2LbRuwWNHH0KFXkVif8vpDp1CL72H5CPo/3jsD96C
         1HMNiUAJS11/qH/X2bKbfTTOCXuWxfvnjGJVzHLaKDBgi+2BeRCXLLSDMhSll5eTiyZ/
         21sxEMm0prz4xVimgVeHvk7NHcnwBzfRjhwg7L+XsMaQHboNWw3u/dieYPk/iKzMRohE
         YoUYzQeEhZB7wKGGlZS/cec0wAj3aNQBujzC2ovUPIDHA/8Ctop0QjYN9vk1Xd1PZPif
         rIe4U8cDgHKMX5xLGkVXn0rJoYsrywC2JurNIMOkNRPJriwWXp740AWYyHfR6bGy5qMt
         GGhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:from:to:cc;
        bh=GnzpTJYLYjgfJzFWL2are7oYWJtHkB84Nvbb6hJrLKc=;
        b=c9vfneO5X2qZMGVHAUiO0AizMZH/cxZBY/vsLTElQ880+jr8LKws5cp/GpBZU0otag
         eeeDhU19QykhP9UeVcU27huBD9uAQUM6DSPtRbI2+6pDP7WbJzPFSPlYaMny9WnoARua
         +6cRj9KYpVxb8EY42MK4MmtQ7bExM7YWfbJLSNdRQroU/R5JWAHdt4pnT0DesGQ3GCUs
         lXuQW4YGks3vvqH6XMzQu9mDOuD15Ya0flMhWmTxWtRsPl8aE5ytFRTfPDa+46FFUePP
         af/4ksh89rJ6LNV5sbBM0R6QEuDDxsj/KAPNRieZAapzEoZzsLvdyPTEAAlwBMIPVGLe
         zCJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-gm-message-state:sender:from:to:cc;
        bh=GnzpTJYLYjgfJzFWL2are7oYWJtHkB84Nvbb6hJrLKc=;
        b=wOoDNlIWduxd7pHLnEsdcQXrV6YpcuMotOYRTut8TGOIEMMx214dhtIdalMfvYOIrl
         dK4tusaq9alTyNgHwrXAUDkl/yKTf/ZOjQiN4ARDQurpABiQodA+xo4s6M3KSl8ii0Gn
         TZ0J3l93R3RDXUoRsxmr8TRgiZb7P2SEKD33dKty8xRcEzzboB0QQu/mEmsXfY1eByEZ
         32pVKAf3dpxNWBpiCUNIPvmDF6gkJRM3SPLgrS6oMWHBlvm8KPZJuF+rkTvSatx1Ie+l
         D+8wPxoYjw4VDxFLxTsYPpBbVSeLRwi93fHTHWiQqa2LtRrrkAgmrDpe6Ktk7leSH+RC
         nfzw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo3icvzi9yxDi+Odl4e8nkyXx5GYcS6GodqnVx7KpPBSyKplqiEv
	Xga7YEDpPEDS/hfq4wuBv+4=
X-Google-Smtp-Source: AA6agR4s1K6LVtiiR5I7eGFhQX2QMUAh1faOwTW2KXgP1VATITlH7uyys5XCwdouq5BH2O1UAQnJyA==
X-Received: by 2002:a05:620a:1a0c:b0:6bb:a292:bf92 with SMTP id bk12-20020a05620a1a0c00b006bba292bf92mr14427828qkb.90.1661903506339;
        Tue, 30 Aug 2022 16:51:46 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:f81a:0:b0:6bb:2e5:9ab3 with SMTP id x26-20020ae9f81a000000b006bb02e59ab3ls7029443qkh.3.-pod-prod-gmail;
 Tue, 30 Aug 2022 16:51:44 -0700 (PDT)
X-Received: by 2002:a05:620a:d95:b0:6b8:619a:67e1 with SMTP id q21-20020a05620a0d9500b006b8619a67e1mr14125036qkl.630.1661903504563;
        Tue, 30 Aug 2022 16:51:44 -0700 (PDT)
Date: Tue, 30 Aug 2022 16:51:43 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <8d5e3b93-2ce2-4a34-a58f-606d68915034n@googlegroups.com>
Subject: Using meson to build open-iscsi/iscsiuio
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5148_867642506.1661903503967"
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

------=_Part_5148_867642506.1661903503967
Content-Type: multipart/alternative; 
	boundary="----=_Part_5149_1267961934.1661903503967"

------=_Part_5149_1267961934.1661903503967
Content-Type: text/plain; charset="UTF-8"


Hi All:

I am planning on converting open-iscsi to use meson for building instead of 
'make'. This would convert iscsiuio as well, which currently uses 
autoconf/autotools.

It looks like the resulting systems is functionally equivalent (i.e. it 
builds the same stuff), and it's faster and a bit smaller. And easier to 
understand and use!

I have the changes in a branch of open-iscsi: 'use-meson-v1', i.e.:

    open-iscsi github sources use-meson-v1 branch 
<https://github.com/open-iscsi/open-iscsi/tree/use-meson-v1>

I would really appreciate other eyes looking at this and trying it out.

Anyone interested? If so, let me know.

The README isn't updated yet (in this branch) to explain how to build 
things, so let me know if you want the secret sauce.  It's something like 
(from the top level):

sh$ rm -rf builddir
sh$ meson buildir
sh$ ninja --verbose -C builddir

to build, and

sh$ ninja --verbose install

to install

You'll need to install meson and ninja.

Let the hacking begin!
-- 
Lee D

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8d5e3b93-2ce2-4a34-a58f-606d68915034n%40googlegroups.com.

------=_Part_5149_1267961934.1661903503967
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><div>Hi All:</div><div><br></div><div>I am planning on converting open-=
iscsi to use meson for building instead of 'make'. This would convert iscsi=
uio as well, which currently uses autoconf/autotools.</div><div><br></div><=
div>It looks like the resulting systems is functionally equivalent (i.e. it=
 builds the same stuff), and it's faster and a bit smaller. And easier to u=
nderstand and use!</div><div><br></div><div>I have the changes in a branch =
of open-iscsi: 'use-meson-v1', i.e.:<br></div><div><br></div><div>&nbsp;&nb=
sp;&nbsp; <a href=3D"https://github.com/open-iscsi/open-iscsi/tree/use-meso=
n-v1">open-iscsi github sources use-meson-v1 branch</a></div><div><br></div=
><div>I would really appreciate other eyes looking at this and trying it ou=
t.</div><div><br></div><div>Anyone interested? If so, let me know.</div><di=
v><br></div><div>The README isn't updated yet (in this branch) to explain h=
ow to build things, so let me know if you want the secret sauce.&nbsp; It's=
 something like (from the top level):</div><div><br></div><div>sh$ rm -rf b=
uilddir</div><div>sh$ meson buildir</div><div>sh$ ninja --verbose -C buildd=
ir</div><div><br></div><div>to build, and</div><div><br></div><div>sh$ ninj=
a --verbose install</div><div><br></div><div>to install</div><div><br></div=
><div>You'll need to install meson and ninja.</div><div><br></div><div>Let =
the hacking begin!</div><div>-- <br></div><div>Lee D<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8d5e3b93-2ce2-4a34-a58f-606d68915034n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/8d5e3b93-2ce2-4a34-a58f-606d68915034n%40googlegroups.com</a>.=
<br />

------=_Part_5149_1267961934.1661903503967--

------=_Part_5148_867642506.1661903503967--
