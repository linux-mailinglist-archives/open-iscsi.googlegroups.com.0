Return-Path: <open-iscsi+bncBDTZTRGMXIFBBX4PQGGQMGQEWMKZY2Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E317C45E4C5
	for <lists+open-iscsi@lfdr.de>; Fri, 26 Nov 2021 03:35:12 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id bd7-20020a056808220700b002bd5095a720sf5071443oib.10
        for <lists+open-iscsi@lfdr.de>; Thu, 25 Nov 2021 18:35:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637894112; cv=pass;
        d=google.com; s=arc-20160816;
        b=xNPxPSzIDr8ZI1FCORAFqUJuCTDJ4s56r2Thup3eXYYJVUexrocF7MmVD5I8qiTlUA
         AWfqAlyTiralrXCpkiTtr1oGW0WXZmV/BwDXqMz0gcqbQXrpa2UPBasF3eFitwwndZeX
         R+NzEfzlZ+dvg1ssR6+qB89/KykkSeKrRAyJqepFXoZcxud+mRGcCbomxCGx050mgqmf
         aCw10s8ii8W55s/tK/A74e1N6s3C732KUNXQoZ6olqcntdBukqa912TXCioBsScRDRKP
         mqLeJbAjkdGRlbHnPo34H6xUCwcPfYMx66Pz5QBk36DYltdx/57Ezi+t1nekCDMYJtnx
         FrXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=lXeV+KkC3QW1BZKBKQcNoKYSCvJqei5eqUhH37Rg8yU=;
        b=GrMATG+9h3hl9tR8WPsPIi3bDxzNh+qIiVhTCkiAMBEGQbwvv4BuV6A6nPEngl4kPx
         rzxuWhMP1CkqN853Nd29c2JjgWvb7W4DnlzJQhQ1T0ZRhMo23PrIKzmdj8gRFDfxCe1j
         yRL7BBmReS3A8wGWO22X612L+iGKiljA3sJHVj/nwfleyvneBKQJ+hiY2BrNxAgYLnlw
         szUIcbn+8tqnUpoqlZi0rQeGNf59EiPS6iGk9SpnhB2j8XDWoDtgQZUzg8A+DIweOQOZ
         2CakcikK2n7hOtGllXsBUr12UszXlYkIkGNP9K8hzRbgP646o5HQar0OUSxxVihB2Wmp
         VDww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FtL4H5vv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lXeV+KkC3QW1BZKBKQcNoKYSCvJqei5eqUhH37Rg8yU=;
        b=QjFl8aDkXNEXt86U/cTrr35ATjuZIN4t3kqinz47h61VoetmfkNlTaZUWUuTOj502K
         uA5Ux4/B6LkkhOUJiRIF12fjX2bwcOM20EM2UJNo3/dkeRn5jcS0ulBCEiLg/diNC/wm
         Zqsv4gF9UCsHog++sonkKv4f5pNT0H/zgac6cvbXjLHrIJ/qGzsPKwCkyMOT0No9xoWY
         OncB+UYbXAVN90FP5UuV4r7q6yHOnpIgYtXqzpTZJOJJ13SmX1aRVA9UP8ry/RVqCgU3
         jnp8waEj3307H8uM5/hvBBexPdliiD0BicLw8F5DhCgauaAqaCZ6isMuhpzRbEO9GtaQ
         u6wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lXeV+KkC3QW1BZKBKQcNoKYSCvJqei5eqUhH37Rg8yU=;
        b=jYkYV+HknxPb4fyAzJ+/HTy9d2fJfCUEC0iACFzLTHag7jwIHuh7aq0lBn6tjowtka
         tF3GS4/DbYZLOwylPLQrxZ7oV+evixzY/zPOgCfoPiZaeW7TFykqAhYxRKwKd+nAEKWC
         FMlu34HJyv1w5Y5CL65/IJv4tiB3a3LhXgIzIVZS/uoqsSguclbcRFDdGAG4MwufxhJp
         cJOi93OQEoY4iDJkwOT4cER2J/sWOnku7/hgBm1taB3e3TKc4cqU6DFI4ZW6uCeEVJW3
         rG2npWfADEd7J7QPeSutDaTqpPmwMhtQ8a2ucQJ7l31F5hJeN6YmB+MhvZNgyFqmxE7m
         fnyw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532NkdnuumgaEKNqGG9P66opavUQWiPXeZE3BVQHnZ0Gp+LUdxn5
	IRsz4gxIFuozq5yvGgzNYgM=
X-Google-Smtp-Source: ABdhPJzUypYXx2HInCjFZL+Y2cRzMchg8qHbmmvvm1AB3c14C0fqOSmsFaVv1k6/Mqf6f89ipExBUg==
X-Received: by 2002:aca:5f44:: with SMTP id t65mr19733676oib.131.1637894111859;
        Thu, 25 Nov 2021 18:35:11 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:ab4e:: with SMTP id u75ls1981501oie.2.gmail; Thu, 25 Nov
 2021 18:35:11 -0800 (PST)
X-Received: by 2002:a05:6808:20e:: with SMTP id l14mr20083961oie.119.1637894111470;
        Thu, 25 Nov 2021 18:35:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637894111; cv=none;
        d=google.com; s=arc-20160816;
        b=UN69ofCxWHA/KI1bY+sWyQwCWjs4B8Z6AmhJ3JfpHpC6OMFp88DDaXhedpQNSbjVe5
         JBUUngxhRRApqwxSn3YzUUqaBxEXtlQ+CLmpNAxDQqDHlJtC7OriJWnRmGm7OEANw+xX
         KbcCl3b/+s4eAOdfg4WZttYJPl/G3ZPD2jXECwNoJdM5lQ7BvFQjRG6MltTVDlkzdxMd
         QCxgut6FqdFEH+llY4p/EEbzbpn15mzebFonz/2ONWbVZhlooJs2V4GtJ6a3hxL/KBvR
         xQ56XEPLhwcAYEOuJ16K1ON6yeFWB1YNSr51nKFoYdleJYKWgsHedkL8i6paIHJAYIZd
         KEDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=b2UkEOCAmW9ID37SoJryd4Rj4lvHzg1VtX3GZ9n8+WQ=;
        b=RjgovS1Plz8HZAI4748hcNms83y/+lbDbd9JMyUsebR5f+HnDkdRs6BUmY/bPKgWCU
         26H34OG2nUX66+x1UlcLdXbfDNWQqonsBLwN29NZrmpihvLY+uc+uqh0GP4ijrjpdvM+
         4AaCDzwjmHQvb3CWVdw91EadmnMaKff068ON97qJiqRC3nCbE59H7UKm4/DOTlI7vBff
         4LDsqXgNybLg7p6MG/yph7eeSrO9JBYuZGY0iHJcCoKGmcmqxCOiYVOe9dQRR665Khvj
         XpF90bl1syLEyYnIc+H7nVa9BnZsNEbbi2TowrLiuAHJi34H7lM5Cv2OZTJbHmkpmSLz
         IoJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FtL4H5vv;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g64si806221oia.1.2021.11.25.18.35.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Nov 2021 18:35:11 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9E3B961260;
	Fri, 26 Nov 2021 02:35:09 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 13/19] scsi: iscsi: Unblock session then wake up error handler
Date: Thu, 25 Nov 2021 21:34:42 -0500
Message-Id: <20211126023448.442529-13-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211126023448.442529-1-sashal@kernel.org>
References: <20211126023448.442529-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FtL4H5vv;       spf=pass
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
index 6f21cb75d95fd..f6cce0befa7de 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1894,12 +1894,12 @@ static void session_recovery_timedout(struct work_struct *work)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211126023448.442529-13-sashal%40kernel.org.
