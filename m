Return-Path: <open-iscsi+bncBDAKBNEQZYKRBEEZXGCQMGQELIG5ZWQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id A81CF3918C7
	for <lists+open-iscsi@lfdr.de>; Wed, 26 May 2021 15:26:41 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id o15-20020a05622a138fb02901e0ac29f6b2sf661641qtk.11
        for <lists+open-iscsi@lfdr.de>; Wed, 26 May 2021 06:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iXUELQlZ0AgCtnv3ts5dl4e9htp6i8OfTLTFPu/U0oI=;
        b=lmf8Sd6zP1ZEh/meSzzMbKVyFR2ZgKcOTCIxsaliU1rxmfSEo1FuZW68bdWjJB68SE
         4xQ+cg9PS4i76orkFwkwQVdqgr5B3B5NZ+o29ELM6DlYG+kIJo+9BmfXcrvkdUwj83IH
         OfVFyyriK95p+dUARNuRqqsGZ+H6bxmZ7XtcN4LEP+oBsZGIXLtReuRrpipcqQY0jAUm
         Zv3nnMA9g2lw4FVyT5mde6MQHLVdeW22EpUUj7PtlGZQ/c/xnN257S8FBOovyB6OFs03
         51B/Kt0ai1aaa6UNSBbSmXIeaChpgIC+s91xNIAT7u5lcJ9TAC6rrqwyFQXeMTFIUfni
         9BzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iXUELQlZ0AgCtnv3ts5dl4e9htp6i8OfTLTFPu/U0oI=;
        b=hqRFLvdgM+bk3T32zbl8m5oDiRexVeX4qV+ddVRGROECRDGVkoa7I6nULgVUYUgxQv
         UH6x71HNQYkr4+aVU/hCugnKxiN68IPPJopVgKxUW2DNaICww5lmc5PP7OSI6dB+lYtl
         K31tYeW5x5UOW11UKHusVfCW9qcP7JosRmbCcZZVa0S1ULFlKBF7MhGq1NTcO2ed9KAn
         CPRD4A/4kAk9uD97raZ1VIiBy54sCctx9pQgEBi3APCtFLHRDOWvmERPqSi3CLWDkprT
         Dv4X1vv5zcTbF8hzJfYz3No9N4mhz/pwLJYiTF/zxBhiFtdI7907mL0kkRLtxFUouYt/
         EH7g==
X-Gm-Message-State: AOAM532gGbvhmqYFk1bqe3ytg3xIPxZPqJ7G0aAROcqxOhRcc+qxUWHR
	KgQ+t43hVK9k185ApG/Y8uw=
X-Google-Smtp-Source: ABdhPJwaVErMgPLOt2w9jm8FuEP6u18wGNLeqSQK7IN0qJwoBmmEl3/PDyFBPUWT8Y3qzekP5D0tgw==
X-Received: by 2002:ad4:5be8:: with SMTP id k8mr42181263qvc.21.1622035600532;
        Wed, 26 May 2021 06:26:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:3d51:: with SMTP id u17ls9186648qtf.10.gmail; Wed, 26
 May 2021 06:26:40 -0700 (PDT)
X-Received: by 2002:ac8:44ab:: with SMTP id a11mr18134773qto.60.1622035600018;
        Wed, 26 May 2021 06:26:40 -0700 (PDT)
Date: Wed, 26 May 2021 06:26:39 -0700 (PDT)
From: "'H. Giebels' via open-iscsi" <open-iscsi@googlegroups.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <92ea6c0d-de4b-47f0-95c3-d22257089eban@googlegroups.com>
Subject: trimming iscsi luns?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1122_613928676.1622035599346"
X-Original-Sender: pinguinpunk@googlemail.com
X-Original-From: "H. Giebels" <pinguinpunk@googlemail.com>
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

------=_Part_1122_613928676.1622035599346
Content-Type: multipart/alternative; 
	boundary="----=_Part_1123_693832630.1622035599347"

------=_Part_1123_693832630.1622035599347
Content-Type: text/plain; charset="UTF-8"


Hello,

not exactly sure, wether this is an issue of targetcli or open iscsi. The 
target lun is a sparse file, and I would like to be able to trim that lun 
to reclaim free space. Think thin volume on a file backend. 

Now iscsiadm -m session shows me (non-flash), what I suppose is the reason, 
why I get an operation not permitted error when trying to so so. 

The manpage talks about a flash node, but it is nowhere explained, what 
that is and wether this is related to flash storage at all. So maybe there 
is some documentation about the terms used?

But primarily I would like to know, wether the information about the 
trimability is a matter of the target advertising it or wether this has to 
be defined during creation of the lun on the client side (-o new).

Thanks

Hermann


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/92ea6c0d-de4b-47f0-95c3-d22257089eban%40googlegroups.com.

------=_Part_1123_693832630.1622035599347
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br>Hello,<br><br>not exactly sure, wether this is an issue of targetcli or=
 open iscsi. The target lun is a sparse file, and I would like to be able t=
o trim that lun to reclaim free space. Think thin volume on a file backend.=
 <br><br>Now iscsiadm -m session shows me (non-flash), what I suppose is th=
e reason, why I get an operation not permitted error when trying to so so. =
<br><br>The manpage talks about a flash node, but it is nowhere explained, =
what that is and wether this is related to flash storage at all. So maybe t=
here is some documentation about the terms used?<br><br>But primarily I wou=
ld like to know, wether the information about the trimability is a matter o=
f the target advertising it or wether this has to be defined during creatio=
n of the lun on the client side (-o new).<br><br>Thanks<br><br>Hermann<br><=
br><br>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/92ea6c0d-de4b-47f0-95c3-d22257089eban%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/92ea6c0d-de4b-47f0-95c3-d22257089eban%40googlegroups.com</a>.=
<br />

------=_Part_1123_693832630.1622035599347--

------=_Part_1122_613928676.1622035599346--
