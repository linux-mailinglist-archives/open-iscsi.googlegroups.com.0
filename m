Return-Path: <open-iscsi+bncBC755V5RXMKBB3FZY6MQMGQE2EESIOQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBD25EADAB
	for <lists+open-iscsi@lfdr.de>; Mon, 26 Sep 2022 19:10:06 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id f12-20020a05620a408c00b006ced53b80e5sf5442311qko.17
        for <lists+open-iscsi@lfdr.de>; Mon, 26 Sep 2022 10:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:sender:from:to:cc
         :subject:date;
        bh=6ADyxvLr8aZM/TuME1CzQm4PSjRU7oavzRhwJFoIqvs=;
        b=hW10Ay2yy6Xlg/VuiVdNBIdSUN8Vy29rrFGzCFser3eOhcsRCizZwPsclARpMKT4Au
         CCXLtgjLDAXoC/BRzR4YeQbstDiDrm3qt6T+Wu+OptBOoSTmyMOpksoDkc4HUuwltrUa
         4yAVHu5F40ekwaBi4UnOt3RvE/0xNY5nO8Br68+E9nfGmgTZxEhDiDfBjRZoBCKHTGoG
         d65YuGNONUwJTm3N3rp/4bRkcHXB1A6MiE891qAzW+MCKmKVkLvjXoUVViTkUwVhNWhc
         ZQ9rvOyODD7L2rpltPgW5Mgia0EnftNeqSyhacOqrf3HYiejshfxG+5Alo5SxoIjTVtL
         eEkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:from:to:cc:subject
         :date;
        bh=6ADyxvLr8aZM/TuME1CzQm4PSjRU7oavzRhwJFoIqvs=;
        b=Wb7bXAISRZ1GDpMXrgmrapmSaJUDyFTA6RUQHcNWS1h+s0w7jQoA6xL2hcAad+JhE+
         nDXn3nXNJchMIOKn3pBJGE9IbaL/6ScUzfyQqmvEAQRja8vXjZHUs7US3l1/0Qt0Fnen
         CqbIBYTKMwPw8/c87J64X8Ug2Z3ArjHyzBTzIcnGMlo+A/1uvrLhQgx5kdiKmCrlVMtl
         eTVQB4qnbYy+IFzNS0TiAY5GeituKdPi/kqqQd8tJxaO3htqGITTJlrEMvr4qQXkKbb3
         qDsEIDTwKtz4gbqAeMU3ab+BGrf1QfhMGheFDgQUHYWavLAYFFdfTmygCN/toT1sNNgP
         uprQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=6ADyxvLr8aZM/TuME1CzQm4PSjRU7oavzRhwJFoIqvs=;
        b=CWBIXcmzscaCNEzIbMlMbzhiEICaFloKx27VvUjd2xuIDBib9ojNJJHPlypigo2MWI
         ewH7YNWva5i53UpSuiULJ6ZZTCwemtrFOTuconyEAdAvfrvG1Sm1g4p7B9kC1AsqaDDp
         rC3Q7YU8XzA6/4O/UMF4qpNNzeTucHKZOxNIvig+ut4z4hZ87Dm8dCxNQVIPZ0SY+FAT
         SeKm7BU1hZYdqCMnt3EAWEt737vnIKy95SZ1Pi65lmQUg3onmJQcanZ07lMquAE7pz1P
         gVx/4xNLQqdGnMX2d7qlP/KGFbSMyqrPUQa25PLqQwX78M6JQkZxORLMS5bJSGITbH0W
         UxOA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACrzQf350XpZ0X86BTAOYoas1LGNiRPmv5mJxlSkP6+BSfLB7dbxEWZe
	Vs4YDXnsS4BfB33g0YhmfUU=
X-Google-Smtp-Source: AMsMyM5amyJd7cW7SN/W9TESJ2rbzWs8eEr2uAzhMFlFxlfQXHLeT+XsPxhNrqxNTN+H1RttJTVtVQ==
X-Received: by 2002:a37:8d44:0:b0:6ce:6118:f546 with SMTP id p65-20020a378d44000000b006ce6118f546mr14978057qkd.469.1664212205711;
        Mon, 26 Sep 2022 10:10:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:da92:0:b0:496:439b:1bb9 with SMTP id z18-20020a0cda92000000b00496439b1bb9ls86605qvj.9.-pod-prod-gmail;
 Mon, 26 Sep 2022 10:10:04 -0700 (PDT)
X-Received: by 2002:ad4:5aa3:0:b0:4a8:821d:5e69 with SMTP id u3-20020ad45aa3000000b004a8821d5e69mr18260153qvg.25.1664212203902;
        Mon, 26 Sep 2022 10:10:03 -0700 (PDT)
Date: Mon, 26 Sep 2022 10:10:03 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <9e0f4ddf-fd5a-43c9-94ee-91fb879921edn@googlegroups.com>
Subject: Release 2.1.8 available
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3406_996752105.1664212203289"
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

------=_Part_3406_996752105.1664212203289
Content-Type: multipart/alternative; 
	boundary="----=_Part_3407_302368856.1664212203289"

------=_Part_3407_302368856.1664212203289
Content-Type: text/plain; charset="UTF-8"

Hi All:

I just tagged version 2.1.8 of open-iscsi in github.

This release fixes a few bugs, and it adds support for building using 
meson. Building using make/autoconf is still supported but deprecated.

Please check it out if you get a chance.

-- 
Lee Duncan

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9e0f4ddf-fd5a-43c9-94ee-91fb879921edn%40googlegroups.com.

------=_Part_3407_302368856.1664212203289
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi All:</div><div><br></div><div>I just tagged version 2.1.8 of open-i=
scsi in github.</div><div><br></div><div>This release fixes a few bugs, and=
 it adds support for building using meson. Building using make/autoconf is =
still supported but deprecated.</div><div><br></div><div>Please check it ou=
t if you get a chance.</div><div><br></div><div>-- <br></div><div>Lee Dunca=
n<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/9e0f4ddf-fd5a-43c9-94ee-91fb879921edn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/9e0f4ddf-fd5a-43c9-94ee-91fb879921edn%40googlegroups.com</a>.=
<br />

------=_Part_3407_302368856.1664212203289--

------=_Part_3406_996752105.1664212203289--
