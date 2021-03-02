Return-Path: <open-iscsi+bncBDTZTRGMXIFBBJ6R7CAQMGQE6XZFNCY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id ED68E329D6F
	for <lists+open-iscsi@lfdr.de>; Tue,  2 Mar 2021 12:59:36 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id 190sf10340169oii.3
        for <lists+open-iscsi@lfdr.de>; Tue, 02 Mar 2021 03:59:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614686376; cv=pass;
        d=google.com; s=arc-20160816;
        b=OCyEx48Zt03pDaUfpsYiER2/VqQmOMny1SjPHTgxP9YDWRW/+iNhnUVpQGCTtpUkmr
         QqGPA/LE/Z9MOd2qg8+Vqz4h0LpbXpw9s6BguDxh4V4qSRdIYx3vlgi4fZidBA7NT2nr
         1p1HjDVellY0Me8+fHGbVu5GNFEaG8v8zOTpgPgPdlst3Uh549rDRH/h6RSnJz4Smv2X
         Lifvk1QrVvbzVecJzyq+xOMREcfHCUrH0+pgln8Q5S4049dHGNbVneqYkV7bg6XTuLWZ
         EHLv8jqyxeudkyADpz4Thu7WXTGZhK8uxhmhuAw58FMC7U3CTwNgto4lZ7wyLNcB1NDa
         vpMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=iEjL9Uv6FLPk8n3pjZlrNk3gVvz/BR9A8bdk7eCHxWU=;
        b=i/9m/PL4yjflDWebsKDXWyZvsKRzqObK/YXIdSwylCuAJtcYFw2ldw8z9WYP8Xnmfa
         z7F0AwseTFPIRyT6Wstisb/9Di5auWJjZB4d+cICXgNqUynSHi85ouILb6TsbNZ30O37
         J9HdReObRh3LizIV3B/7TSlrGiHx/m7uLNKLAjdo7PfVqB3aS1duuQynD9HE/5tStmVp
         CHRvEyjC9yKe5a+k/ZHiQW0sJpn8Jd04jSkXqFB6FQDUr5hfgE/Tt546+M+b0MJKmf7P
         hDHnxhGRa1ukTlhum6hL+XeoSv/Jh7DrFUay+GVnKI5gFEA/qFoM2XvX/8ldcPxesIua
         i7vA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=k6fgQStL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iEjL9Uv6FLPk8n3pjZlrNk3gVvz/BR9A8bdk7eCHxWU=;
        b=IGFCDjQ6u+H+8s19QJTlrL4NTv8trzEOg3p8wHtMbaygM3yeilDILSLxoJ0tC49Fdb
         SwhgBGmhrqas0xF2RcnwaknYn0dThmhTu2l5AgrJOY3/N5uKCbtnKR8HUfUT914qivIs
         HGa46kl85f1JdnzAcentkGhtkwXAFowFYG//TjBX35qRYqvrU1LxV7J8pIT91tIMBRTY
         J9UsZH4rPtoRjaahbeFo5MShrtp9ghqe3tGLGKiYyC7kf7/T2vbzmvLceteHRphxhGVw
         IBsfGufByEwfq2+sDde/jPtstBPIM3WLTSWr4BWtGIqENfzq9rKjGNE7jPpcoRHx38VX
         vj8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iEjL9Uv6FLPk8n3pjZlrNk3gVvz/BR9A8bdk7eCHxWU=;
        b=Rv1cCTvR+8R8BRcNOz5ff0QNFMVtvwN7VPI8+DqfjCcgjUv/wDyQ2/pGfbTWjb+6Lg
         KlnB2vVfuSGMx2wyKmcnzQBWzrwIor4J/wXF0WoD7uwrAqInBsxRTa732FADpVVkHu2R
         u8RMooeweRVLhdNYgnTKw+ElroQ8ykUPx8Z4M3XB+LVwuFRdn1kJTx6olNh+c8XTH5cO
         cmykIRUUCxt/c9nv5ab1Anxl7PyJ1Q4ZNqhPRxec63umDVkzEOt5zXZohho2kFc1pS/V
         QRZFvAdfBDYKaaTI6lqtrNSik6WICrkbUZKKjIAacokYLUjLJdvcyxsU5lGOHmRrS+ti
         V+tw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5338ozgGOCySKI/9t82AGxlRqF6FTfaE9ONYjzItY6nWG2PhjRhz
	n6xhLlM+kZ28Vhg+ilEkqOI=
X-Google-Smtp-Source: ABdhPJzEoX/ZDtT5Qy3vfGD3KpTM5ALpecciLZuL6gGVHQ5LW+BAC5Jhi6wxJLhGuqRz8Px/G4wC2A==
X-Received: by 2002:a05:6830:8d:: with SMTP id a13mr17173351oto.69.1614686375997;
        Tue, 02 Mar 2021 03:59:35 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:827:: with SMTP id t7ls5627178ots.8.gmail; Tue, 02
 Mar 2021 03:59:35 -0800 (PST)
X-Received: by 2002:a9d:64da:: with SMTP id n26mr17528982otl.272.1614686375647;
        Tue, 02 Mar 2021 03:59:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614686375; cv=none;
        d=google.com; s=arc-20160816;
        b=HHck1kJVe9pG1RPWXpS+rdjzWFB3jfOsD1gAK6tfsctmLdeTldTV2lqqTGqutHAu9f
         mcJV1KOUt0MC63LqXVEjesD91sX7DWOTr9lw61CLSvGJnieox6GxEu0npHQx/OZKRF01
         FJWMf82BopMGx5nLpvqXoVjxo58Z4aMZeLhZiCt1NyS3Q1jEKa5/eAygVkx9S2Q8MsvR
         Q+QWPhSdwahu3xBnbU1xsMESW96MU7Z/INoeRxr1gr3P2/Lar46b8xU3cRwLETVnD6py
         a3OPHQg/KfZkCvkaYUVNEuJ2sRCA7KZRtW2WOOtm3Gn4Mism6kzb5TernFtw3gNXSPk7
         hkVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5kcJJfLiBcIrP3NTj2Q5gt3lLSqJJtxDQUAqA0XV6lk=;
        b=boZLlUlXiboFNY9zY/sRhMJU4hwqfosZSaSGQfYnu0RESwAWFm7kk55lfYBxCLe5+s
         V7fOlJ7AUnDyHMvDztouHKVzbyDYx4lYVBNpZX8M2IvSF/r9lCG+nvcx68scS9c/dckd
         ODNaqcrBLHe6Kzbp3VrqO4jJcydeVyddxexjbR/wsnUjA/KX8LfQh2SFuX+gfrofPmi7
         R1/jtM4b0tWLqLC2ed0rlQFlHmsRBqznITMor7nOL9Dwe4rk1xsV+pSwzAZ+vecQ9697
         ZkVG3Fu5JDC9k6lctacA6vWdNq89FUa2V6LwoxAG5+d0So8F/QzQn+OpkXzTU6pVSoaY
         452A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=k6fgQStL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a64si1523038oii.2.2021.03.02.03.59.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 03:59:35 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D8F9F64FCC;
	Tue,  2 Mar 2021 11:59:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 10/10] scsi: libiscsi: Fix iscsi_prep_scsi_cmd_pdu() error handling
Date: Tue,  2 Mar 2021 06:59:21 -0500
Message-Id: <20210302115921.63636-10-sashal@kernel.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210302115921.63636-1-sashal@kernel.org>
References: <20210302115921.63636-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=k6fgQStL;       spf=pass
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
index a84b473d4a08..c0c8b97f6e90 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1568,14 +1568,9 @@ check_mgmt:
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210302115921.63636-10-sashal%40kernel.org.
