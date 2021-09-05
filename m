Return-Path: <open-iscsi+bncBC755V5RXMKBBTFM2WEQMGQEVTH57EA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 588AC401226
	for <lists+open-iscsi@lfdr.de>; Mon,  6 Sep 2021 01:44:13 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id u19-20020a05620a121300b0042665527c3bsf9211850qkj.14
        for <lists+open-iscsi@lfdr.de>; Sun, 05 Sep 2021 16:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XMwTsFxTcaJk3wDUM6OiZDYHiR7QD5DJYcXn6H3P19g=;
        b=Os9brcWWdsLun41MMmWcH0xGSFaQf+CekSAUMWYxKg6Sa1FLYn1WlL+XiNc6RyUakO
         I4ca2kRhi/d2mUSK9ojfOAnVkpP5Ies4PMcD2SnJ6VlhJXKY/81Ph3BWDLa0ckbpMVzx
         p9vMglqHSKIXFqHcua7CdGhuKtoReMW779mcH7BYqJnflKnILCt+oW3iYi6DNiCusqtc
         j6ZHvG4jGvuG8EKDNQrx0m2CHDfZlpSpyrvFSo2y50U11liAr5H98GA+NhTaHymdaSZ0
         DE875V9jdrV3GUgBnDrI58mOHt7SbyXI+I9AH8z45TN7KHV+vvsWuJveCrHh4IM+/lLl
         YhCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XMwTsFxTcaJk3wDUM6OiZDYHiR7QD5DJYcXn6H3P19g=;
        b=JbHpx+a93fNdq7yw9R15LHhgxetz03JIDojh923jPSs4DRjy9BCVBhKa8//qDNyjFk
         tab+0/lFOAhSzRapDODEm8y1EohXTuZHNY0Z8+QpDkRd2mFLbIsnGA4RnRklkxksrMve
         yEjcz4YVLaHw8dkYZqvAeTxpKsGAhCNDRTPtGXe+M44SyWopuHbafmT5AZwRcTq6jHwO
         Ynp63EWLmG4xf/rCNfZsCer55wY4KxoLWJzZJ6SuZXRmZmBpzBBtH4WQPNrrKyB7H7mQ
         QMGS5iqWbS1gt2VdRmJZRAHan9Wac7HMWNQodySHFeL3tPE14kGWwEJDguMAbz+uV7fW
         LNaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XMwTsFxTcaJk3wDUM6OiZDYHiR7QD5DJYcXn6H3P19g=;
        b=jWtOYdHdFaznIZ5gnllbzq+ki5pN7h8yRt5KQLdMfeHNdzE1DDWdi7LxWuR+0oPvBi
         XuVbRD29NAg0M9qRmKWoKNUF9MuYASapNq99Mg2G48Pw/y4oTe6fophVqTg4Cae6MYQm
         QL2xjHC8SLbsgNIT3DqGeVLs3uKTIsAJ9Imx6Uotw1QYwnDoxAkC7RLYJaw9k34fxd6X
         ppK/dRciOByF2Mqn2DmNrnesFOSZDbd/gdSzvMyB8rSfZKRxpXaJQOKy+/7VgqVFL0nb
         pDCg4rqwKqnsa6Bfohb+Ulks8hRVVj2k+3vxsLx/CudvPtWnGCi35R80kpYsVrei7rAf
         BUCw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532RzX7QamSuRZwvihm28AXhQTXoby+CCGAHxelwUwr6/vBaYOWe
	kYm9ivj+yyFZ39/NpGvvQrw=
X-Google-Smtp-Source: ABdhPJz/AN7K2VRMOjEYAPS6/e7TRq08cg1eczCHZaOwtkjEmQ3VnFchelWFpBPMIrpNLKD5G0nKSw==
X-Received: by 2002:a37:a45:: with SMTP id 66mr8731712qkk.137.1630885452251;
        Sun, 05 Sep 2021 16:44:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:1582:: with SMTP id d2ls3102202qkk.9.gmail; Sun, 05
 Sep 2021 16:44:11 -0700 (PDT)
X-Received: by 2002:a05:620a:1453:: with SMTP id i19mr8623993qkl.40.1630885451718;
        Sun, 05 Sep 2021 16:44:11 -0700 (PDT)
Date: Sun, 5 Sep 2021 16:44:11 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <7f774cd8-201a-4e08-bbb9-9b31a4e21361n@googlegroups.com>
Subject: Release 2.1.5 tagged
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1336_1861725605.1630885451156"
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

------=_Part_1336_1861725605.1630885451156
Content-Type: multipart/alternative; 
	boundary="----=_Part_1337_1130086495.1630885451156"

------=_Part_1337_1130086495.1630885451156
Content-Type: text/plain; charset="UTF-8"


I tagged and pushed release 2.1.5, which contains bug fixes. Enjoy!

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/7f774cd8-201a-4e08-bbb9-9b31a4e21361n%40googlegroups.com.

------=_Part_1337_1130086495.1630885451156
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br>I tagged and pushed release 2.1.5, which contains bug fixes. Enjoy!<br>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/7f774cd8-201a-4e08-bbb9-9b31a4e21361n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/7f774cd8-201a-4e08-bbb9-9b31a4e21361n%40googlegroups.com</a>.=
<br />

------=_Part_1337_1130086495.1630885451156--

------=_Part_1336_1861725605.1630885451156--
