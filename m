Return-Path: <open-iscsi+bncBDTZTRGMXIFBBJMPQGGQMGQELMJFJFI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id F40E345E4BC
	for <lists+open-iscsi@lfdr.de>; Fri, 26 Nov 2021 03:34:14 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id y20-20020acaaf14000000b002a817a23a1esf5071699oie.23
        for <lists+open-iscsi@lfdr.de>; Thu, 25 Nov 2021 18:34:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637894053; cv=pass;
        d=google.com; s=arc-20160816;
        b=HIJNCzGErOGm1fHfaITUXWxVmWsxgNygJ46jIf5191ZP1S3ezYova21KkSFpiqyYmr
         fLLyFvx8M7xWlnSOw6lXoemsmBoJJNIJvGT3x/vANUtBOgh3IQNQmcWDVWGzQqS7/iac
         v+jRVz/+FNBcOT06PIKyDGWxZnFFG8bzwWmNW3+EqsqCPTyiCpfnBgPDaetaldeIXZaN
         M8goo5EQL9MdNredZnB46/r+J22AFwlQshyd005gBnx8zV9OtVTCoJINRgt6/zJYhOgf
         mupqF3HWfxEWZVlSpPkSkOmQFFMaRVY0uXSRP4eEW1jk7WtM1W3GWWr7xz1pSQHxy9/6
         cdNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=fI2LCLLGxBsHiffQFb+4SghEnIwYjiep0G+8x/PNaMw=;
        b=kbCMNHsguOdCz3TL0kJ+1kbXIM1QnUcUtFN6FFthHt+scb9HmLid5GS2uQcrId8H0y
         SglL3Be1BpwwIb08azIKaL1WRM2RcX3c8EfQ3+tXdVdiVcOO6QyP1Se1rrjRS/ICAiPP
         QG/+YI4Bm+FqjnoX2rcu8Y+4/r9a03eG5dQ5nd03LLnm61ZJiidGwIgBkWmN+bzL28Yc
         vV+Xyxl2w8zAfk9gbkC2wihFUYVfIwgBc04memm36Ycu7rH/zIhZYG06IBGPM3OtLCsa
         cWf2z431TbxIDPcoiOg/fnLyR6uvjfav2DXDytPI/5ISejfur+kyUvywg6uyJp+opXv/
         YKCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=O7ByQEaD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fI2LCLLGxBsHiffQFb+4SghEnIwYjiep0G+8x/PNaMw=;
        b=aJMWz/jmvMvab/qup4VStAlNR2qbfUVRDX7i+Vf2dHY4Ho7yYMEzR6yHvhS19v/MAe
         gLhHEcSlOKrb/tuC1rYgLLZ5YkuMEXgp2TEca59g9bP2S0axviM0a0w77AAmPnQsoSOF
         vto90GzlcF5S/j65r3VtgMfGdyaYN0bc/m44zn58KkMptq9ZlabZJDaIJ08l2XSU10X4
         JJtyJ7riolmB7a3DMuuf/Qed87QyA+k1nQqnoeQIeuPXjHrqnHTrjw9WHepctV/1N0i5
         G2RN+H1rDKCdWT1rMyEpFSBbb96zPvU8wJrrhhSyBANVPJ+xIHsBYSFq29Tp5QxISG4B
         PLYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fI2LCLLGxBsHiffQFb+4SghEnIwYjiep0G+8x/PNaMw=;
        b=OPIiuqsLA+JMJjSKIqyCjAZv8hatzTgaadKVh/tG1/8NrUIm1JsjMvVzyAC+vQGr95
         lqvWCaivItpKT3eNJRV5XARe6mNxO3gW3ygP8MBx+Yj+GF86OlR5Zj9Pj4U3TMoWupuf
         HYzRXHSOO26AXU1j/OAWd/MMEtgGt/zl+WOiucYdbigaOX8H/MWkLsEecchpDeon2C29
         BUSNP41+LJxlE45Ujcs/Df7MOVtngkXvas5SQnxUBEKqLOF7/g+O0QlrCb9pPaQO28a6
         yAWvK2hO+Iznz7SMFMUcOqALwN9k2Hf/p61g4RCHdFf1yc5LLKBJ+lC3J/RSKdEFpAgW
         6v7Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531TRCFe5MpOixfPgMjPLiVTB/PcXm7h3HMCWMU+e2WdFQ2GWvpo
	+MPR3Jtj9k4CoY4LPRVEm/8=
X-Google-Smtp-Source: ABdhPJyLn6fZfybxPYx6ndbSgcmO3cCmYVSnxu8t7ac5lA92cdlZQBfCAen+8wDi05gtn8OA+UXi7g==
X-Received: by 2002:a9d:67c1:: with SMTP id c1mr25679968otn.299.1637894053322;
        Thu, 25 Nov 2021 18:34:13 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:15a1:: with SMTP id t33ls1973110oiw.6.gmail; Thu,
 25 Nov 2021 18:34:12 -0800 (PST)
X-Received: by 2002:a05:6808:178d:: with SMTP id bg13mr20136527oib.171.1637894052863;
        Thu, 25 Nov 2021 18:34:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637894052; cv=none;
        d=google.com; s=arc-20160816;
        b=UmMX2d72Duf52QZH0pU77YflaUif5mjf+xHbLH09jSh47MG3JECpOLKHFgDpkwhzd7
         TxqkHmbqFA3x8GmDVFJwsA1LhA1Aw487QrAv8lw1rLpW3C+51dAtZCK+2E8FUZWrSWPy
         80IjFYJjyVMGqmSZsIQjw3ir5PQ0uDGptq9VQWhapCUihygzVYPteA6oDuZMKa4qDpGn
         7FPvrfK8Y3ziL+EDoVGuT2FW+2PNR2EnfMJ3Ywpm+Moe0SEWSntAMHBZHP020jbJzKUF
         T2cbp2ycKye1NY8Ox+PSmU+gTPQ1hTCbyyMe88Dzi29UVu0xBbD9/6pgIKQMb7JeHxoW
         hP8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tSliXktCrk/B54kCYgysF0eZAWHDp479dk3Vcu/ZCkc=;
        b=pRDX1IOjIvOY4lhQUmM2eu3xRh1IF4yWcizuKZTHrrL6EGDJXwsCKOPjtwh8onRVzo
         eQssuELDQl+7JMAPjZHghvqjqSdM/85HRnKSHjykY041B5Gy9yc0vGTd6dSYlUkXyY54
         f70nzElaTA3+skJ7Y9//ggAN6YjwQjdUqAVJ7zYSCUh38phHZaHT1tbew4G+RFcQXu3l
         8UUAQEqTR34MhBtZvqMaIDoxGbzakyn/BXKFVTqVina7p2RXEUkQkvODKr2O5fD44ARt
         EWuyIsX4+nbA0YZycftvJNbt4JQBltrfLxatnT7yX0XeJcyhCDQdN9HGQzbxnt0Qayl7
         sBOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=O7ByQEaD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e20si432931otj.1.2021.11.25.18.34.12
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Nov 2021 18:34:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2EDDF61181;
	Fri, 26 Nov 2021 02:34:11 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 17/28] scsi: iscsi: Unblock session then wake up error handler
Date: Thu, 25 Nov 2021 21:33:32 -0500
Message-Id: <20211126023343.442045-17-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211126023343.442045-1-sashal@kernel.org>
References: <20211126023343.442045-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=O7ByQEaD;       spf=pass
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

[ Upstream commit a0c2f8b6709a9a4af175497ca65f93804f57b248 ]

We can race where iscsi_session_recovery_timedout() has woken up the error
handler thread and it's now setting the devices to offline, and
session_recovery_timedout()'s call to scsi_target_unblock() is also trying
to set the device's state to transport-offline. We can then get a mix of
states.

For the case where we can't relogin we want the devices to be in
transport-offline so when we have repaired the connection
__iscsi_unblock_session() can set the state back to running.

Set the device state then call into libiscsi to wake up the error handler.

Link: https://lore.kernel.org/r/20211105221048.6541-2-michael.christie@oracle.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 3f7fa8de36427..a5759d0e388a8 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1909,12 +1909,12 @@ static void session_recovery_timedout(struct work_struct *work)
 	}
 	spin_unlock_irqrestore(&session->lock, flags);
 
-	if (session->transport->session_recovery_timedout)
-		session->transport->session_recovery_timedout(session);
-
 	ISCSI_DBG_TRANS_SESSION(session, "Unblocking SCSI target\n");
 	scsi_target_unblock(&session->dev, SDEV_TRANSPORT_OFFLINE);
 	ISCSI_DBG_TRANS_SESSION(session, "Completed unblocking SCSI target\n");
+
+	if (session->transport->session_recovery_timedout)
+		session->transport->session_recovery_timedout(session);
 }
 
 static void __iscsi_unblock_session(struct work_struct *work)
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211126023343.442045-17-sashal%40kernel.org.
