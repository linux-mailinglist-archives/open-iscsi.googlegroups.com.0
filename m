Return-Path: <open-iscsi+bncBDTZTRGMXIFBBJPG774QKGQEVVZ6RUA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9FF24D9B1
	for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 18:15:35 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id z23sf1092037ote.14
        for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 09:15:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598026534; cv=pass;
        d=google.com; s=arc-20160816;
        b=quc5AIkHM2uHX8Oy90C+mIbCaEAKYK3hduxqx1gilj4d/j1vyzGk672f+by1wDJxZW
         Z6DQFV2M141GQ7NcIitN/NbhCMQiAEf5uqrfgwEpMRlCgnUktJygJKyEHJZ+GydXFkhH
         Nr4kxMBqNqaPR1EXfEvTcksBhtR9kBKN9KPncmwZs8ycFvf+fOxpW0CXNKuGqPJaNd4Y
         4IbI8wKsyRkpCgzUXE5OZgRwmGBCLvnPFF6ZikUCMdHOxBm3Gd9yEfh2atFJsT9PfrtL
         WBnTQ576AFjH00ubuv7YFEO3dxK+Fdn2GNSVIrE0cGzAGIzgvzg6I8ohuawMeylippc9
         M1qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=RmxNRLhAit4f/sld5VcQb92HPK5pylt/vxxSpepH+EU=;
        b=ebHJvL9TXZlACxp+TcxJbBDK5ETbtgGR17ofte4wOKpGGh6wsCrOZtrcXR687TpvtN
         BH3SBAeOpbNEgYVaIA8JVN09FCMN77u6ygv2l6VE98Qhcy3gWf/Pi2rVPa/5WkjxGMFY
         H6yR1zY2hEKJrc2cYVpNwG35WoOQqcJp8gNMVkQFLETpc45XLqOM0vDDm+mDp05HPXDs
         O9CipXM5EhDrLWQJtE6QYSJ8R/VHPHNEG9HvHVBGHDFMNlUheljVLqLTAIUDkUTqKiAY
         XKGhBSTHYacX1Cap+z1ZMJ3MSoTJdY/DWQmFyjE8ge13dMIhEEiNDqEZRYMmS7f1Hqa6
         1daQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mqjqBUj3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RmxNRLhAit4f/sld5VcQb92HPK5pylt/vxxSpepH+EU=;
        b=PlGaTEGsQGHC1FUWWdXJiqiBIXpZch0j8U8RXUeVgExCmHoPI98X53zI4jxw5gp18t
         VsQB8Yky9+nIgl7pyu/UTEribOKmpNV8FRX4l7uM3bvbRvIlWYd4UkFOMVvO7E/cyx6O
         SRl45w9dzeE05g8BF1hWyimv+A1aP4hDHKPrSIritM4oVg7jdr77W9cBjJOH12WLm4Pb
         ctikN/O5X8Pltr41b1jOVNKFsrutAYLWazW03ghnMPhJE2HzgjypwIAYcfFHR1klU6OP
         RYi6FjgIPM/+o4Bgdk2EF55hhdIOKiTuOelwhqTI+p1k2cO/JcBWRmHxHx0wp1JfJjbf
         sqFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RmxNRLhAit4f/sld5VcQb92HPK5pylt/vxxSpepH+EU=;
        b=A6JyqIPM6hMqNyODtjQLCL06iBi+M9fxerd9DOveIZcfTYrw3Trnk5qo59QhZsJp59
         d9joXZKlQlVPiodE2QwlHviTWfgmSOuhtcipMx3bMjD2BrRdX/Rt7Gst8Zqa/6xxJK8H
         uNEiehVWZCY78KzDG6T3kSe0aYT7cCYZKjGbFI/DY9vjSCCzsZuhAt7lReLPyYxYz0fJ
         q2mYZkwaSaJxE4BYnzacXmq0GHJCH/gdPrntPf+u5ZjOxAKSue6uagV7GW76edZ+XH8o
         ggSVSb3CqRI6UFbOVfO1XvNITF8kIKgLy03yfiXCQGa8310O1hoMsE333QmVFwJgA40+
         nOFQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5322MJ0+kQNzTyxS9MrCyRTk+TAjG0THfjNQdSjW5h1DUEhEXPJ8
	D6SQeOsEVSzPUbzZ5Nkz/QE=
X-Google-Smtp-Source: ABdhPJxt/iCKmjEuIHdYb6AM9dIkAIm7rSzE87qjaza2/MLeE5zm6xCmi+PbP5RQ/xLee19E6/GCUQ==
X-Received: by 2002:a9d:7f0b:: with SMTP id j11mr2364365otq.291.1598026534020;
        Fri, 21 Aug 2020 09:15:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:d555:: with SMTP id q21ls159366oos.11.gmail; Fri, 21 Aug
 2020 09:15:33 -0700 (PDT)
X-Received: by 2002:a4a:dfd4:: with SMTP id p20mr2678665ood.86.1598026533668;
        Fri, 21 Aug 2020 09:15:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598026533; cv=none;
        d=google.com; s=arc-20160816;
        b=LmRt9ZE36amJbDlvSUbPhOYNSwmjaJY1LvZoWW+1u2EB8lBFi+oHd0eSHcvbljpb4i
         wyOegQc6nsDIFvqGbbezmQqPHjSpjX/TdAogUmVnNi5O7HtP2jZ9GM8s70vDOxK8Va1i
         M2iB0q0oNdNAoIScOgkEGadD3uVtiuovLLSucmnhhF2cWTuqr4FBiQSlt5rloqR/pbeX
         kaM2ab2DWZQHXj02iMlDQzNBe5R1yikyryRPCH5SmBKxFgceF2k2OBrlQ4XVYSMH8BI5
         snQlBX0K7XrA1hBhZkh0oEhVLi8Xg7wOgrxgOFPqM2v1QaGs9bKfzYl9pF7kbgYy4IOK
         G4pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HeDqConHReQcjKgBIyyF6DCXNIw131nsn+XwJmVEN24=;
        b=g0CRQA9b58bdsnqNaIOYAwePnbFlmHi9J0XXafP0eio3LNmye621xV3ez99GHumwT6
         r7zQNkqKd5rVzmi+Y2JDWZNG24lI7v30AnQzCrK1aBtrd/AZKOzB+FPqSYFG+//4ITMk
         EK776740CsmAc5zvXbP3jO/UtU1fXVYhGvRVToT06MhAcy3vJXioQ0TANfKSyUXIselE
         nrFLdmSF0KJ4EehT2MXZUMK4Rkxmf7SxWaOS4x6GuYjLH7wRWhdim9lDDUzH+3ZybzXS
         CjwrCU2Emp+i4f4q7/ElQCRClPXNcdy9bUnrqP6YoQBMDBA605Sx3d/99sjSY2idCfl1
         R3kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mqjqBUj3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 22si114089oiy.5.2020.08.21.09.15.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 09:15:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EFF8D22BED;
	Fri, 21 Aug 2020 16:15:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jing Xiangfeng <jingxiangfeng@huawei.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.8 54/62] scsi: iscsi: Do not put host in iscsi_set_flashnode_param()
Date: Fri, 21 Aug 2020 12:14:15 -0400
Message-Id: <20200821161423.347071-54-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821161423.347071-1-sashal@kernel.org>
References: <20200821161423.347071-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mqjqBUj3;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

From: Jing Xiangfeng <jingxiangfeng@huawei.com>

[ Upstream commit 68e12e5f61354eb42cfffbc20a693153fc39738e ]

If scsi_host_lookup() fails we will jump to put_host which may cause a
panic. Jump to exit_set_fnode instead.

Link: https://lore.kernel.org/r/20200615081226.183068-1-jingxiangfeng@huawei.com
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 7ae5024e78243..df07ecd94793a 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3291,7 +3291,7 @@ static int iscsi_set_flashnode_param(struct iscsi_transport *transport,
 		pr_err("%s could not find host no %u\n",
 		       __func__, ev->u.set_flashnode.host_no);
 		err = -ENODEV;
-		goto put_host;
+		goto exit_set_fnode;
 	}
 
 	idx = ev->u.set_flashnode.flashnode_idx;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200821161423.347071-54-sashal%40kernel.org.
