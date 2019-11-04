Return-Path: <open-iscsi+bncBC24JGEJRMKRBTFKQHXAKGQETO3PQAY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 262C6EE4F8
	for <lists+open-iscsi@lfdr.de>; Mon,  4 Nov 2019 17:43:58 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id l21sf1253492qke.21
        for <lists+open-iscsi@lfdr.de>; Mon, 04 Nov 2019 08:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dCtclvPwbGCM0swH+AwYgNp7KM6s3BXbqoqfyQsDeqI=;
        b=jFMf/RxkJQxXub/OmOPkAhG8TIzaOXp8zGOAWYIeI0qjK9v3k87ikRO2nZm9V10JXZ
         T3mp5HzBanMic3BaUlrgY5/FGXBrbGq56h/ERhhr5nNeeI7+hrqKFGA6TZv4FGQLKPPV
         S+/ADIJZsQ265TGHGKJ3d9HF3Lh+K6C68UZy7+K9iU2clC3GZYlQT88jAwcruhrcZFwZ
         7qnuYEt/Wen2LRqN7HlZaBj3X6gZJMmHhh44jctX+DO+EvAv5xHakzDEPrGc0+Vzwe6f
         7BRblMiVeIA3w89FWoh3NHe1ByqXi/MvS7MkRf7B62x7oDpHB1erFsRAwaac4LhDPs2Z
         M75A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=dCtclvPwbGCM0swH+AwYgNp7KM6s3BXbqoqfyQsDeqI=;
        b=tN/a/YYN8+Dm35KUyEbvYxTzLNxBI+9p7orwMn3Qw5pMySnlaba0r2nvcmR0n6xSIy
         ZtyfLQsiUK2idvKTxIpLceOzdvj9GU3Magl1Q/GYJS8zaXGeYkzC0CnJHbcS+RgeW2hL
         +xhF5eQPqhXcq4rh9mLelf+O7ragiksjV5c1kXD6GO6gqmd71sMx1PSb7118/y6ZNwWb
         DPYf7kKfOmIJvTsTt/hTMznYPcLVFQ2stt8JoF4o2C02eFgIHVhpEjvSnD0ALaI9byO/
         YAzuJJc9qRG/RO55jyqsnQeY+Nyhi2t48HBiZUsNKcac0MpjziwIyoXxbcma4ahm3bXc
         5YkQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVmw+ZS+mU/4XWWis4IrBNs54qlTuwQ4medLHCbC1yasZnfgFRV
	V8KBGU7jYXcId5ocfCXOWpA=
X-Google-Smtp-Source: APXvYqz+7rJUMVoEaEftUccgwaRcJYPLS53RHVDV4z4GPgTRkYb+HMIx1L3XBbxMc47+RTEZlZV3tA==
X-Received: by 2002:a0c:e085:: with SMTP id l5mr23308589qvk.138.1572885836865;
        Mon, 04 Nov 2019 08:43:56 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:2fc8:: with SMTP id m8ls4347613qta.9.gmail; Mon, 04 Nov
 2019 08:43:56 -0800 (PST)
X-Received: by 2002:ac8:3142:: with SMTP id h2mr13839610qtb.182.1572885836746;
        Mon, 04 Nov 2019 08:43:56 -0800 (PST)
Received: by 2002:a37:6c82:0:0:0:0:0 with SMTP id h124msqkc;
        Mon, 4 Nov 2019 02:46:42 -0800 (PST)
X-Received: by 2002:a05:620a:142e:: with SMTP id k14mr21359656qkj.398.1572864402347;
        Mon, 04 Nov 2019 02:46:42 -0800 (PST)
Date: Mon, 4 Nov 2019 02:46:42 -0800 (PST)
From: italienisch1987@gmail.com
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <1ea172cd-def3-4466-9440-2667a78cf8a8@googlegroups.com>
Subject: iSCSI packet generator
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1096_1715854490.1572864402067"
X-Original-Sender: Italienisch1987@gmail.com
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

------=_Part_1096_1715854490.1572864402067
Content-Type: multipart/alternative; 
	boundary="----=_Part_1097_286149932.1572864402067"

------=_Part_1097_286149932.1572864402067
Content-Type: text/plain; charset="UTF-8"


Hi

I have two virtual machines. One is a client and other is sever (SAN). I am 
using Wireshark to analyze the iSCSI protocols between client and sever.

Someone recommended me, in addition to a packet analyzer, I can also use a 
packet generator. Any good packet generator for iSCSI client/server model?

Thanks

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1ea172cd-def3-4466-9440-2667a78cf8a8%40googlegroups.com.

------=_Part_1097_286149932.1572864402067
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>Hi<div><br></div><div>I have two virtual machines=
. One is a client and other is sever (SAN). I am using Wireshark to analyze=
 the iSCSI protocols between client and sever.<br></div><div><br></div><div=
>Someone recommended=C2=A0me, in addition to a packet analyzer, I can also =
use a packet generator. Any good packet generator for iSCSI client/server m=
odel?</div></div><div><br></div><div>Thanks</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/1ea172cd-def3-4466-9440-2667a78cf8a8%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/1ea172cd-def3-4466-9440-2667a78cf8a8%40googlegroups.com</a>.<b=
r />

------=_Part_1097_286149932.1572864402067--

------=_Part_1096_1715854490.1572864402067--
