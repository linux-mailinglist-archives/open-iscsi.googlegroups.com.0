Return-Path: <open-iscsi+bncBDAZ335MLAIPX5OA7QCRUBHJRAITY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B736294DC7
	for <lists+open-iscsi@lfdr.de>; Wed, 21 Oct 2020 15:43:25 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id i13sf1082585oik.12
        for <lists+open-iscsi@lfdr.de>; Wed, 21 Oct 2020 06:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tByQRItGTUtiI9bxr2j5o9+LJoT2wXM/wYByYRZ9qTw=;
        b=svp0ZSprNEU/fg4DUw7h3aYUhSg+sUpWgVnc+3/W3PUIKjWrnIDQMGDaSEazd4xibk
         xHsvo78gr1xgI5JZ7YgWyRaJolLfYDS7RmTI1MhwkQJuRwyx5/LMbTZ6TAHDiaGZJjLY
         45iL67dfAiAVUVTJlDAHF7dmMtySkeO9zpfsYuTQab/l8uEy6vBp0MmKZJ8hWDBms+LB
         V1Zf7BVbCT6IO4AD0S4m1k/UWG4wkyOztsYlMmSihfvGTY75ssKYbFTwt1sd87eaiygP
         DOpA9vPbTKAWqu5ydjdNNfwfLdE64ntmOkv5eK3RJK45GLd5uVE6x7wIXQuR9HYMRgrJ
         yJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tByQRItGTUtiI9bxr2j5o9+LJoT2wXM/wYByYRZ9qTw=;
        b=OX4ZcymyvhUw7im/jrrxZ0bLUZDz8xKCzMn5Gg/7sZ/ESA6afrkx83WHAZMg7+jkhI
         JA/qCOwu7ALtlTKIr4cFsgzV0K+Xl7xFu6QieIutSxsHija60FHoFegkBg3D5khun3jZ
         I2GD8IIM7aKs+yqnk+Pwr3M7IzS897HnDALeHbxT/Ya6isJ2sDIEMgKG/21EibfuVgS8
         gst3177dIik0f5nwIkCvDOcyeHIF5KW9xMvM9H6/eQIORxg9mFOk04HjTEQibaPZiKta
         eIVbpMTR8NiL7G6yVg5XAJYOnLq2KnzbKOwTb+OaI2YOhXRy3fULezDxojF3U2/IEQbO
         PK9w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532vNHgQgqkZZF0V9gXCBqN9s+oOg68jVvgRmze40YXp+UBpadED
	GdbuxcH5rUYHD4Ceghsf+pg=
X-Google-Smtp-Source: ABdhPJyqTiGw2uJmb88HiiULmxVsNYytd4O2ol79Tkxoz/JjXAcgwvCaEyxfw8mV33o5sd74kOYBeQ==
X-Received: by 2002:a4a:b34a:: with SMTP id n10mr2684224ooo.46.1603287804162;
        Wed, 21 Oct 2020 06:43:24 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:6949:: with SMTP id p9ls10127oto.6.gmail; Wed, 21 Oct
 2020 06:43:23 -0700 (PDT)
X-Received: by 2002:a9d:2c4:: with SMTP id 62mr2737927otl.224.1603287803496;
        Wed, 21 Oct 2020 06:43:23 -0700 (PDT)
Date: Wed, 21 Oct 2020 06:43:22 -0700 (PDT)
From: "david.p...@perdrix.co.uk" <david.partridge@perdrix.co.uk>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <5e784f60-ee52-4cdf-847b-e06f50d491cbn@googlegroups.com>
Subject: Slow iSCSI tape performance
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_412_637894023.1603287802689"
X-Original-Sender: david.partridge@perdrix.co.uk
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

------=_Part_412_637894023.1603287802689
Content-Type: multipart/alternative; 
	boundary="----=_Part_413_1677521787.1603287802689"

------=_Part_413_1677521787.1603287802689
Content-Type: text/plain; charset="UTF-8"

I've seen a report that disabling Test Unit Ready across the iSCSI link can 
hugely improve performance of remote tape drives.

Is this something I do at the machine hosting the tape drive or at the 
client?

Is it relevant to open iscsi?

Thanks
David

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5e784f60-ee52-4cdf-847b-e06f50d491cbn%40googlegroups.com.

------=_Part_413_1677521787.1603287802689
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've seen a report that disabling Test Unit Ready across the iSCSI link can=
 hugely improve performance of remote tape drives.<br><br><div>Is this some=
thing I do at the machine hosting the tape drive or at the client?</div><di=
v><br></div><div>Is it relevant to open iscsi?</div><div><br></div><div>Tha=
nks</div><div>David<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/5e784f60-ee52-4cdf-847b-e06f50d491cbn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/5e784f60-ee52-4cdf-847b-e06f50d491cbn%40googlegroups.com</a>.=
<br />

------=_Part_413_1677521787.1603287802689--

------=_Part_412_637894023.1603287802689--
