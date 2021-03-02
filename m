Return-Path: <open-iscsi+bncBDTZTRGMXIFBBGWR7CAQMGQEVAVUTKY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4BE329D6C
	for <lists+open-iscsi@lfdr.de>; Tue,  2 Mar 2021 12:59:23 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id i19sf7939593ioh.18
        for <lists+open-iscsi@lfdr.de>; Tue, 02 Mar 2021 03:59:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614686362; cv=pass;
        d=google.com; s=arc-20160816;
        b=v0RcYNikyRE2cDLeQPlDGus4YLhYQhly+pMYF6Fk7wt6tkoqYOUi5Ukcq4u75QvDSm
         RQyjJ3Lg/kbqZlyrstp0KKSh1uHEW5dMuHjXbtVZkNcU1wjPjHicxDpkk0Krsw6IBbmF
         /UIgmVuOmUgh2/CFGQMEtiXEXv2dQuGkL/JcYwKtDX/mVIOPEyWp6tyUr+/Q6AWE+oNZ
         Us2zUoWbsc8865oCDqdkD7jRM+n/gszwi/tcH9guL2L7R9KhDD9R15g+rNZRMlsEUvAA
         UDfVlnoq56cjGMaeHmrwj915fvxeKNHE2VsZbtoiFdBHrg8hgOdxHhJZu4C/IKo1J9Gf
         t//A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=PXO4Aadmx/uBn2LnYJcp+A1C+f0q7JeuRnDI6qePxfk=;
        b=FHqbd/IUXQiD1NwyoYK348il0T85OHP4lBLte4L88t/DtQc/1+OzH8RAsITod8SW4T
         7LE3L4937JII/Vg683JS03uSbnCiK9ovOqqyY0av1/MVB0DmjJ8g/0Qs8sQOxE7QTLpr
         mBmPXs5yL7kzNz0Z4g+92LqrMz8v8LoJbf/CFoZmneVlbRqkh5s35Sxcl+DeRVBB0DUh
         +VQ22MREZkRruWOQ20+Xmyzcq+/QULmEy1yF/ApQVgQnSFrWOOSO0empSuQ9gCJsgQ9+
         nZie/edSe+5AijbcuLbyZRC0sRatp8XPrTYcsgDjU3KChwNj9wgK70K1eL+hl5ycpJvp
         7Z4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=C+1pYb82;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PXO4Aadmx/uBn2LnYJcp+A1C+f0q7JeuRnDI6qePxfk=;
        b=r5BCC9wJmn1yZQvX+RxSxLZM69cbg3pK6+3+YhAQiAxTWkY8lOtWIU4NV5bPQHUzXK
         f3/sAQDtLfAzkJlXnCu6jVpEuHMQ9sgiUJhHaY2VnJR738hlaEwxEj3ZkuF9PToYCCra
         d2UgQkWLawwZpeVH5/opgfERBZaqQL0tR3apbdaA3TItOPbACC9ZreUlU7g2C/vSkZ1i
         Oorklc9wKC+qz9JXyh71vY7UNIdaUUBjpJXVkzHRT7e4x9jVJl0Qv+fhyieI5aifsPpP
         qXRJ3QVnVRUL+qmNqTRdVqr6hUFpwF9o7UEjC46Qgyo+OvAllSz1JJPkdUOdrcI2ctG5
         uTrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PXO4Aadmx/uBn2LnYJcp+A1C+f0q7JeuRnDI6qePxfk=;
        b=qhydgiuMWpCsZGTiD7zjCZTQfUjP/mH9HwBjZXxMiVoQVZgWh+xzU3OlRPvOxOB9yC
         32NCJtiqRVjfq/Cf+XJ5RAswUJvfHgEAuo7aOpNuuug3B8Z8Hi/VPFwsQGHeUIOVHtWk
         7ti++0VEE5kaxwdPyU8dCsfHqboEymUjJwuzdq77vx08HhDetlG3P2OW3Kz6PrmvKuDE
         SO/Ou2JC0fn2BAEpVuzNbnhwjr4R/ohf6kRSoXyPx8gi4zmOmeJY52WpMsXoT/4VLMVL
         WqGHdWXQU5l/iP+UEx6tGVeaqmuDG+g1RA1+P/bUte+8WRx1m6BczPMrh0xGYBsUNzyx
         3gpg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530Y7JsnN/HxzkVbIqqiVKy5WQ4bMFqshzBK1LmG5yYOPrAp5cjC
	aAo4/7HtNyYUHc+8NkDAdbw=
X-Google-Smtp-Source: ABdhPJw6t2pjPs3jSBK7dDJDSRvrsJx20AugMqiGKTIJPWX3rPP+z+H6hEjYGlSXmSEdTrPYzTqwgQ==
X-Received: by 2002:a6b:fd07:: with SMTP id c7mr9613083ioi.198.1614686362382;
        Tue, 02 Mar 2021 03:59:22 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1a85:: with SMTP id k5ls4777244ilv.6.gmail; Tue, 02
 Mar 2021 03:59:21 -0800 (PST)
X-Received: by 2002:a05:6e02:ef4:: with SMTP id j20mr15860986ilk.199.1614686361946;
        Tue, 02 Mar 2021 03:59:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614686361; cv=none;
        d=google.com; s=arc-20160816;
        b=CYs1tKVKwUF9GetDyJ2TxX6lbROKKme3VFl+fBcfqhOvEFqin9K6X63381rOGXIDep
         Qlb8svS555/NRD6/Hsl0PMLCM9pp7qnREQD+RvCPELhj31el36byjHGVsRSyF+a34XXg
         BnWpCmMXELxGR59WTzHvqfNupKN3/kZnLqCAoQv13ZI8ws7HckDmYcMEyKvMkRbdqc8d
         NfB3dxIsId2co+3gYT2IFh5b/HXnx5zVW9G/KxThLUZyMTo5z2wMyz9QahIA3nr6VIU6
         Kn6zZJOtjHKe4O0hxUDhNmbfV2Tx+nWsr8JGc8To5WeR32TmG45oqtoQMxcrz2PAVHGV
         +wDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HohJAJGZrDa8jqEZZrPyJx7LaI0A2bY5UexTk8H+kRw=;
        b=VTBOwgfgu3o0uQyDq5cax/Q+e69yRcNcVRVj2T0qbRqHbuYOo+cjUjl0v7/FMKZZs7
         LgPLoEdXq9fLjbFByT6Iw6vJuIKUw6mb8DLwC3e89LTbXKEDIPr0dm8NXD3odBG4Wg02
         m0+bLudRmPEX9D7GbjhPrceFx05If1MnN2MMUNyID4qf2aYUTZvx37MiD0L6Paj0XBUv
         ubExbHDqMitKfqBoDr4/KyvA9jKBCVjeJ7F3tzIPMCd3Y2gYd5XBP7sd3HlxAPy+CZUE
         MdDzhuJ9HMn6tIiZK9QaoXDi0d1Yr+zWLUYIb0kGhaWg/irpC/Wgsm6O6CajnTUSh2Et
         bQKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=C+1pYb82;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c2si986015ilj.4.2021.03.02.03.59.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 03:59:21 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0343B64FC1;
	Tue,  2 Mar 2021 11:59:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 13/13] scsi: libiscsi: Fix iscsi_prep_scsi_cmd_pdu() error handling
Date: Tue,  2 Mar 2021 06:59:03 -0500
Message-Id: <20210302115903.63458-13-sashal@kernel.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210302115903.63458-1-sashal@kernel.org>
References: <20210302115903.63458-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=C+1pYb82;       spf=pass
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
index f7e1af90849b..fffaf9b3476d 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1569,14 +1569,9 @@ check_mgmt:
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210302115903.63458-13-sashal%40kernel.org.
