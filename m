Return-Path: <open-iscsi+bncBDTZTRGMXIFBB6WP7CAQMGQE3YISDIQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC20329D54
	for <lists+open-iscsi@lfdr.de>; Tue,  2 Mar 2021 12:56:44 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id v62sf22273049ybb.15
        for <lists+open-iscsi@lfdr.de>; Tue, 02 Mar 2021 03:56:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614686203; cv=pass;
        d=google.com; s=arc-20160816;
        b=UUKsc5oiW9pWFeQFETPmDH1GzVE6/MjuG+7uib/RrzeYNkpB4wS+uOfCWMnZtLxuhr
         9pMRZC9nXrrwouFzqrIq5MpZ0XhPf7bH14fWA8TVMk48b0qNMdRrzFFGG4U98JQU1gvo
         ekdE5YeNGe4xw4O9gd04wHdd6jCJH4lzMA2odlJLdwaAefl6KRCoxFh/Gd3kH3tmhJIX
         opE99beujEbN6P+PZJnciqkET+hO1JKDKkiSC0mvwM48FKUD63mSBE7yAJ9s4cSI5axo
         ZmMwea05PMXiINRu4CpGPRNTcGE0eKEllj/ildff/oJOWdl6xkV/+MoOqhzoAwuMnK3w
         cKyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=kkQ9gDDOx8nNlNrA4Ry0i0Ch+5RfXpJOj1GSlzJSp2o=;
        b=EDxUYTSJ82Hf+3k2rx9dE8snGJ9f57vz+W5GZ0Ij1Vdrc+mw6fC/y58R7cj1uYe2S2
         RyjlUX5hFBnYtZ1CjC4wITtX5PguGL4jkCeIr5+5jr5YeaKusamo3Ttr6+FdmuB3i1vI
         d9m+8F0HYMpCECCOL+gWLH+IXwvZhA86bmsIRJPveYu0Tz0tGJd+1csXlwY1bIWUDZMW
         0CYo5uLYeszzqyes/CBdEsthigJ6JqaWLeFKQvt5Z9IBI5cnxk8xeuGhFzSkhJoGHQU0
         240iOckCHzKoAfcBMOQz8nVF/fj/SfOjhwPE1q462np3M0JoONU3ZqTyGOqBqB2O3C3v
         2jkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rOIez7cy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kkQ9gDDOx8nNlNrA4Ry0i0Ch+5RfXpJOj1GSlzJSp2o=;
        b=MRLpOu6jm5arAHuiGdDiPXfm279EPi2uOLIOPs5DW0VGP1TkB1QMyYn74052QwD/vr
         kTADWlljz2ZVTTQrMQhXWvYJa0wumIzGZsUg6ltdT8uKkIDiuQO0UftrFtQGFbRArbvF
         sFSHls/Lliz/MmFWNNKjpW9iYGdN6+glmCzAtriTZS2ZP8Sj4ye6gMwOo6T1jhQXOIAz
         yCQMgvtxqBhgijYpkv100pP59ATb3IsemjIj+3NA8Ts6s6nWDODlm3AGw0rCJEQ/m50n
         I1zHqlEe3n0pBh1NjIGqobIhboeEWn5VcJsyAOfmh+bbmyCDeaaBaupQSbl2Q8LZM5A/
         L6mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kkQ9gDDOx8nNlNrA4Ry0i0Ch+5RfXpJOj1GSlzJSp2o=;
        b=Dw0N8Vrb6zLN29pO5MO4u1xPrEkuiAyUiw0KUIxuFAhwhTRTAyQ+8QH3yvl1h2yEeI
         LHOC1i+3DQ78PJ0VpTkgQLs9Feqjfei2rlZSb4MyfHJ58RjG0HR7ckM5sEHXABJIoBtm
         EPlw0KrkbFJG9pFkrW9H4SfEf3WiYDHxSGPXn9mZoG9/nCliItw1XCdtt67PxZBMR/tJ
         cF7YpwUEDZXMQH0ONTZbIA18wRnTzPXMZ56GBQ+U3uAqaEPxT77+N2MUYiuiTEDsEFbH
         NXjFfbtoh7FgYYFtS0pSXN+KzpaY2vdy/zNdTpLXh2OXcvnmY5WDP6X3c1iXDUoxhQF2
         XbTQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533NNNrID2JP5gEeNjAuW90hbHTe7VVbPX4+r//F+rMmKIL1zJF4
	pebfpCVofyLXKOqQjULQ/xM=
X-Google-Smtp-Source: ABdhPJyP5q0s40VajfSWYVRH8v5YOmcwuAKN3vt+Jj98nh7D5Y3AyTg0/JVwDsNeS1TJdm0pqpEviw==
X-Received: by 2002:a25:af05:: with SMTP id a5mr31029294ybh.86.1614686203187;
        Tue, 02 Mar 2021 03:56:43 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:7807:: with SMTP id t7ls10138401ybc.10.gmail; Tue, 02
 Mar 2021 03:56:42 -0800 (PST)
X-Received: by 2002:a25:f0b:: with SMTP id 11mr30026465ybp.208.1614686202569;
        Tue, 02 Mar 2021 03:56:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614686202; cv=none;
        d=google.com; s=arc-20160816;
        b=0oKO0/Qag61hO0MmIuvClPfKJPEx9j6WKAdNi17FQLAJ8gIzq7en8Np2ZuZKmnYySU
         dhXnM/80kTiwhnHolGRwmTTtVGTz8J6AYIBM7zeToBv6aDl6BnwasMvR/gRYukID2vCM
         nCF7OBe3JjmlfzJhR/sLdoaeeHoHE6RIooHWEqe9wXG5XMuD7jFrHV4EOTPqF7YaFa/U
         0rngLKt7dF6XQCtDS2/FTPdiyRgMN+5MXl5QNRcstrhdU3WYIadkIQAdOudMoiD6AMNS
         408SAJmsYLKX2Nn/8HGeBLxvZaU4JCwXOXzzhQ5GqtYccf2EHwrwcLmB0M18XNkGYffL
         hs0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ySMQqsgB7rDjefvBXULowAu41BXmoAQmFyMXWO8Yy7Q=;
        b=DGTzGsgkGkxENjsZEUXUDNV0kPS7Cug+pyGit7gka7QrrHVgsPtT1CYBH8Q3F9Cqxy
         xIMrrfufptQrlIwq/1jDRZEPG+GpesOXdzOSAQcHunrcEZihtYVAyn5cL2VDxf3nMu1d
         Qqb+3cNwatDMV/mAZVmeurDz7LHhCd40ir9A3uhHnckcUr3XGkc2JRn37O9w8mJ4LSt4
         G2tGe9rC05Iz/7DNo7QH6f8ra749qwnzMFehsK7CEkU4I6Aatocn8DuJPvyExyL7iahS
         Iz3lsruWoJfV/7c7Mf2vsCP7zoC8UHzZZXSm1sVqTbSfzOINWvAUpVckbJthyUzOecQr
         Onxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rOIez7cy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x7si1420449ybm.0.2021.03.02.03.56.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 03:56:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5070764F42;
	Tue,  2 Mar 2021 11:56:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.11 49/52] scsi: libiscsi: Fix iscsi_prep_scsi_cmd_pdu() error handling
Date: Tue,  2 Mar 2021 06:55:30 -0500
Message-Id: <20210302115534.61800-49-sashal@kernel.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210302115534.61800-1-sashal@kernel.org>
References: <20210302115534.61800-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rOIez7cy;       spf=pass
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

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit d28d48c699779973ab9a3bd0e5acfa112bd4fdef ]

If iscsi_prep_scsi_cmd_pdu() fails we try to add it back to the cmdqueue,
but we leave it partially setup. We don't have functions that can undo the
pdu and init task setup. We only have cleanup_task which can clean up both
parts. So this has us just fail the cmd and go through the standard cleanup
routine and then have the SCSI midlayer retry it like is done when it fails
in the queuecommand path.

Link: https://lore.kernel.org/r/20210207044608.27585-2-michael.christie@oracle.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 4e668aafbcca..cee1dbaa1b93 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1532,14 +1532,9 @@ check_mgmt:
 		}
 		rc = iscsi_prep_scsi_cmd_pdu(conn->task);
 		if (rc) {
-			if (rc == -ENOMEM || rc == -EACCES) {
-				spin_lock_bh(&conn->taskqueuelock);
-				list_add_tail(&conn->task->running,
-					      &conn->cmdqueue);
-				conn->task = NULL;
-				spin_unlock_bh(&conn->taskqueuelock);
-				goto done;
-			} else
+			if (rc == -ENOMEM || rc == -EACCES)
+				fail_scsi_task(conn->task, DID_IMM_RETRY);
+			else
 				fail_scsi_task(conn->task, DID_ABORT);
 			spin_lock_bh(&conn->taskqueuelock);
 			continue;
-- 
2.30.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210302115534.61800-49-sashal%40kernel.org.
