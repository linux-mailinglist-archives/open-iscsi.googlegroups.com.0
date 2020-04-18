Return-Path: <open-iscsi+bncBDTZTRGMXIFBBXVE5T2AKGQEG4OTQ7Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F19A1AEF9A
	for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 16:44:47 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id y70sf4989020oie.21
        for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 07:44:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587221086; cv=pass;
        d=google.com; s=arc-20160816;
        b=rTiq8IJL22NMN3XckP0/F0xRW3O23n/dKXOZIRaAbiCAB8rPhUhm5HYyqIYGWfgJPD
         M6YewLocUop1sxv1olPKscflXY5s1FAm6AJ8HGYaRnGTL4RdnHpu1VvO0/i5R8g45gmj
         E892daJYFOH2+8XVmRQWEwZ5Kg6+voGCX+3pdymdSe0+UMjLaqOXR5Kfhe+ClAmIslXO
         hysgOATj/JlgKM2PC4ZBg9G20YKehvaIVThzSm22QPyne3sKmVsI71KFOaJBq+ZRbAXN
         Ka0mtHxwbyla1JCfPa8/+pX8Nfym9Aim6TzD9/zdaQJSeE/udUKx5tr8PnsstpAP0W5k
         W0Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=KgCR2XlrGW1tICbOCBSCa8yEWU6CoZYMTd9e2ULyKGc=;
        b=bxXA1UXMmUb1AkfBaplw1LZQA34AZ89BTkHYzd1LWd4UL9Y1Iu6P91RL5Z3JSn19N4
         23H/m+SOJ8a1DwK35FEzaIxVkGqgI/EurCSYTDRPf0A9tCx9xdyyTY28n4XRHSShk27o
         yXb/TuCDZRHSHaWuwnYhZzOcv1ZWhffeIfzrHGoY76aKF5To7x6U0CyVEOw4fiI7bj+D
         4311ih0v+5yfRTYcMUtRkR43tLyT+z+N66NTNEGpF2QpTfv5DBFiSVZn0T6VhdTBfb4d
         /Xj5jNIia2LuUhhvDpnUeGLC08T5NQz59gPX+D0ttaURcDpzbD1fYp4y20sVS6ClzzsT
         ACZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1r0mxCMi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KgCR2XlrGW1tICbOCBSCa8yEWU6CoZYMTd9e2ULyKGc=;
        b=ms6AO31zpk8euFnC7xegtv2Y8PfvNXtgvKN0D3yystwu6gNB6DD/fgXJXGBWkjjax8
         DZDjQMuwckovuNJ+V6CCQNExumnqmmAzH2fdQlxExPqqXQnHt2HFz4bCwit7MRlMh/xS
         FNGIHVzumEfXKWfy86S7wHkQPe1NlXs01O3QRkKHybgUFFJtFnjtOGD7mOd79FZ9FNfP
         KNuUaf+VtXuwTJfqUv5uAE+TJhvkgrnddTumkD5vUGipuUXFuCK1NvMGbRJ+vLUkKLK/
         WUjB19+CQjXuVFlBLVUp6hOoPhFMMYBhoMbGGeYigNYZm4rk5kgEeyxESzwssY7hbNzC
         dO6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KgCR2XlrGW1tICbOCBSCa8yEWU6CoZYMTd9e2ULyKGc=;
        b=P+h9lMYLFVVmzVYklpA2POhBP/8a0FAGwgIFCS0K/Kgl7cNHxpryLQLoIsTRgupK4W
         Z3emHRVFkMwtAvn82U4PBRxzRGhzXam75B7wa0wJbMDCT7w5pqFDiYVRAPfXX/MCnBzF
         kh7rYyX2PHsb1BXOp4UOguNTsrZkIoHdX3f1/kTKJrlDiDrOxQ6wA0l6uwcNY6wG0s1Y
         8VJnx2n9w6G6MK8OqQ4QTM2ZTzlkhShD4taeKztYv1bSL0+B9ZJlde++ST67hq4x/feq
         33esm2YUgeSP6qPZxWs8KMeQy8DWhuvBEfzEMROAH/QyVzuyjEgpN7Pi5p24XgipB6PF
         S0uQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PubgH3mULLAqIRP1QW/jfdFHmfkGlU3fIYykO/7R/9EwJmA7atVm
	hklsbkAa1mWUJyKS0s/UCtY=
X-Google-Smtp-Source: APiQypKj9HbMdsBFwgiEIrCfEjEneWBjBDcUOVQ/dH9QjDf+D4dPHPINdn0S+8g3iGJo3R9NiLs/kg==
X-Received: by 2002:aca:6056:: with SMTP id u83mr5767352oib.95.1587221086170;
        Sat, 18 Apr 2020 07:44:46 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:3b23:: with SMTP id z32ls1226504otb.1.gmail; Sat, 18 Apr
 2020 07:44:45 -0700 (PDT)
X-Received: by 2002:a9d:64cd:: with SMTP id n13mr3098983otl.274.1587221085880;
        Sat, 18 Apr 2020 07:44:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587221085; cv=none;
        d=google.com; s=arc-20160816;
        b=mUF4kdGRvP/DinGe9V1tjo5JNQn6icXJIV3hWrtzftW29WzPPBG0G0KHyKeqg/P2fk
         ld7yW4UKjEBlGNyEGsgAMiYAufNqfbRxGAnfMxLG9elqfrnk829tAdPFqkAF2EVWApXo
         7gaX8DEzZ5tPFokvlFBaqyG+6WHf1u9mk/qmL6V8KdTw1xKAljZYeZfKp3oniWSRQ/mm
         jWm0VD/2r3+nrwpzIlAs/L+jBPuczg/I02DYlQ5ZpO0I5rCFdjmafUkJ5+5IVX1WS5Aq
         MZnO+OYrEGcaHzWF7BqDFgDBE+soY1u+jldEacUT//u0fVdQLFL7TMOAs5lLXCI0FdJd
         a6CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RbPntEC0lCh3Z0IZnLTR2mfaHgpdmNA2mHEr2vOmewo=;
        b=MQd7rNyF4D5WsfZKBBp2MYCWyWRjGoHeQbpy+0Qm1brZiiTWDEZaAwhiP8lKp0b4KG
         lnGc57iO1ORPoeTbrwKIphMfop3ZRtacHoB9Ft9Ja6aL4zxRCuHj3UgW+elXPnyqS9PC
         mfjtPZLPD82sPflw4Y6TLBLdvAogCPP/uIX3vD0J1pNXVXWAnZjb2Ye+U69p3r8XjTu1
         BXyqsQZHNlYGS3dJgza2Oz32YIDtmrLA77ECHnJ3CVlcQ3NDQpb5x+Mj+Yv4u4cJOCWq
         iyPWDUsaA25uQlF62XuyGw9FzO6+hTDp2FpAaobAqY/XoFCWWfMcVqAI52Dtc7RFFOer
         P11A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1r0mxCMi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f139si737965oig.5.2020.04.18.07.44.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Apr 2020 07:44:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4CE9322272;
	Sat, 18 Apr 2020 14:44:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 07/19] scsi: iscsi: Report unbind session event when the target has been removed
Date: Sat, 18 Apr 2020 10:44:24 -0400
Message-Id: <20200418144436.10818-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418144436.10818-1-sashal@kernel.org>
References: <20200418144436.10818-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1r0mxCMi;       spf=pass
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

From: Wu Bo <wubo40@huawei.com>

[ Upstream commit 13e60d3ba287d96eeaf1deaadba51f71578119a3 ]

If the daemon is restarted or crashes while logging out of a session, the
unbind session event sent by the kernel is not processed and is lost.  When
the daemon starts again, the session can't be unbound because the daemon is
waiting for the event message. However, the kernel has already logged out
and the event will not be resent.

When iscsid restart is complete, logout session reports error:

Logging out of session [sid: 6, target: iqn.xxxxx, portal: xx.xx.xx.xx,3260]
iscsiadm: Could not logout of [sid: 6, target: iscsiadm -m node iqn.xxxxx, portal: xx.xx.xx.xx,3260].
iscsiadm: initiator reported error (9 - internal error)
iscsiadm: Could not logout of all requested sessions

Make sure the unbind event is emitted.

[mkp: commit desc and applied by hand since patch was mangled]

Link: https://lore.kernel.org/r/4eab1771-2cb3-8e79-b31c-923652340e99@huawei.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Wu Bo <wubo40@huawei.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 20cf01d6ded7e..de10b461ec7ef 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2014,7 +2014,7 @@ static void __iscsi_unbind_session(struct work_struct *work)
 	if (session->target_id == ISCSI_MAX_TARGET) {
 		spin_unlock_irqrestore(&session->lock, flags);
 		mutex_unlock(&ihost->mutex);
-		return;
+		goto unbind_session_exit;
 	}
 
 	target_id = session->target_id;
@@ -2026,6 +2026,8 @@ static void __iscsi_unbind_session(struct work_struct *work)
 		ida_simple_remove(&iscsi_sess_ida, target_id);
 
 	scsi_remove_target(&session->dev);
+
+unbind_session_exit:
 	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
 	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200418144436.10818-7-sashal%40kernel.org.
