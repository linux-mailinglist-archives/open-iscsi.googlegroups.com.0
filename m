Return-Path: <open-iscsi+bncBDTZTRGMXIFBBQUQQGGQMGQEZ4VO6XA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A2A45E4D0
	for <lists+open-iscsi@lfdr.de>; Fri, 26 Nov 2021 03:36:52 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id z5-20020a631905000000b002e79413f1casf2944669pgl.8
        for <lists+open-iscsi@lfdr.de>; Thu, 25 Nov 2021 18:36:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637894210; cv=pass;
        d=google.com; s=arc-20160816;
        b=r7HXNg2i49BXC2n9aWz3zSb8oUqElBH7SBxJBV+ZaZZoUyWNQEEPNtQvSiFV3wRmxD
         DJYglEz78kFZQA3GzlRVGvWz1EVUR8OGIA5AoTgJwQe44p66tDzYXNx4T3+D18ssLwt1
         HakcH/C0AmnQslZV2VztXb/5keT+d4ftMKohaPHg7RhYHCYZeCToL8mF2SJGYd+3qcog
         p+K2idW8f9AtQ48VJ4AVKzIz27ZlmRHjLQ4JjfdXFDOJZVsA41Hnfs48D/ulTrazhW6U
         IFhbqIdVCryKxrEHEAEJM/l3vqTxWrZBhiFiyiwA7x5T+eMLLKDyGPOAEHoDfUdVmH2T
         O4jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=CywLcZ3jHb05oZU8nvXGME+ZxPihMbZFz6PTXaxKZqI=;
        b=cDWwdA2SmSMHKysFkiFJdCTxA0g2xah6TrweA5uoz4hHpi4oiIFoS869pPTSXcN/m4
         iNluSAk3DwFKngs2OAdgBHpfAB+g2EUScE7UzKrw61agDc7gnZILmERzQVMWwRqADHzL
         BfNJMJK2ONDQ1xZTbi9fw7cb5Q2fHBFGlA8Xjnvb0P5NvTTKFPgGxNzmq7mFuWCplrEu
         F8UEizN91LwTLHg7Q9R2FSCIL2tjegPkdnUHRvfn34M2NBvU6CVhP4h7/wfdRNfuC06m
         wqM9GjReWDkUbf4fKtucrh2dQVYp2Etava/vekDNki7RxhK6liZh+YAIqI9n9Dl0ZjCr
         GfHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TJLbddrT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CywLcZ3jHb05oZU8nvXGME+ZxPihMbZFz6PTXaxKZqI=;
        b=oXIpAm4naRIlhbCglAkxB6xDTU2zXATpW4oP6MdRzrkRETSkMH2XFHSNQGjASdS34m
         CcM7x33xgXCFQbyqR35N3IHUOBZrC9yT5tNnTTfENiVNP2FEJ3sv934ZA7SFGFT08drU
         TgvEt/JFe+dDwfECzMuohkvGLfPyrdIckxHnCNUDItP8so3c3fkX7RaDtCYZAfzgtRy8
         SsIvuSANz2EosTWmUuQiEXokv/t/paQLkxzJHEkUb9tIGx32el9Y45JC22dDFZTzUYd1
         9W4990QB5OJ5MbY0uodYSUK0Ua0tRGT/8aEiE8/AoUArud4bqUmaddy8TsmYgAP545zx
         BmUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CywLcZ3jHb05oZU8nvXGME+ZxPihMbZFz6PTXaxKZqI=;
        b=ptj5xITGWmK/sQHf29Qh/UZeR7bPZe3FRqhhPkDCxD7ZEfKo4UvB8TwXrKOWnNKED6
         fEPktjU4MgLLU+gTaZmMR/9il+4OA7xAZBxJjSQCjKa/ujlHlMq7g32IU7LXV07JdN0/
         837aTBq7c4hzrY3HewphB5G2MvowmskbFh/Emq4OlYWN3DOkiHAGVtWwUWS6poTLXn/N
         7/0taHd3Af+4FdeH/4KJnrzBvolkdtm0leY23lHza3wh9LzKS+5tJIOGGQlxvsVRMT/9
         gU127PMm5mTy2qxV9znSW/1fynzk5iRB6oGTiyhD50i41daX5XjjChemihSglJA9Mbyj
         IvOQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533ALyQLFvw1ZBgZe4TH9nCNHWT/ELqKs9pV6v0DSrBmwPC1Pv9X
	P9cXBzoLXvtYCChjyhPSYAs=
X-Google-Smtp-Source: ABdhPJwqZoQyJN2bGU5VFXmVvJr4y40ijtrLDcMRVII57SbPoXDSVN3D+oHfp9zk8MeJ9f9yU5aczg==
X-Received: by 2002:a63:8641:: with SMTP id x62mr5105384pgd.495.1637894210431;
        Thu, 25 Nov 2021 18:36:50 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:d4cc:: with SMTP id o12ls2497840plg.11.gmail; Thu,
 25 Nov 2021 18:36:49 -0800 (PST)
X-Received: by 2002:a17:902:82c9:b0:142:401f:dc9 with SMTP id u9-20020a17090282c900b00142401f0dc9mr35306153plz.43.1637894209731;
        Thu, 25 Nov 2021 18:36:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637894209; cv=none;
        d=google.com; s=arc-20160816;
        b=lqxYGTUCz6LA1NVSmEuCkws1bCm/6U//kSEEfJHrgP7avRodbkvpf7OgMHW2ebNDWU
         6HNl+XMVwePFPlVEIVFqw6FxdRbJETAiqPdV0Zw/ZD9wFgo/il4YpuDLHDMiGJXwHyF7
         zPcJboCsQZqG49FFMklOiqQnOA8+Jjh+azBMXloKGWowQRfc6KF5aC+WeUt+TSfB3uc9
         37GIu5u0swwD9TNtxU003JqaM0phnuRXRdjdnO7OQuH4O979Qj142nkpxWKn/snvz9T8
         rih2EIRFo8+F3LZ3YzhdrpD3pBhqN5+Fz6mkCnv7kdZdhfd2kqo6ELDzLb+8Y7Iicmqw
         DNXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TqtWE5JXUBA8Ua96nTWofGlw4yQ2vTFFeAwrpVEX8AE=;
        b=KatuI8rE59+Lcsf3i9hC8Wg+UmJlKcOv3xDKKJnGTZzIheX+Fb9JHxlmzgNqTwOs3s
         KzGzsVUMMKuhM2qbqNvVxABBWS3k5AXo5qSoXmdOIp29eSKJtdxw92cklwyqB1cxoPe4
         ws2i93HH25Y/8jxvCITGXBw5tGYXO/MVnCV/2GVDlfDFPjco/uulCH3HBf8NwDX0SDvz
         S9x5MrMW0O0L/sr5J6My6OokLG/u7urj5Yd+Vf5DrLkdQYzTGN+MhBWuI0H0qwUPoG/j
         wCpZ7AIcCJ1TLf+DHPGftWFHLhTi9dYlJ9DpZy67xNZc9huGTqk4V/b+pSpQYz+zfgoH
         wxqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TJLbddrT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l5si443566pfc.2.2021.11.25.18.36.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Nov 2021 18:36:49 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8FD5B61361;
	Fri, 26 Nov 2021 02:36:48 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 5/8] scsi: iscsi: Unblock session then wake up error handler
Date: Thu, 25 Nov 2021 21:36:37 -0500
Message-Id: <20211126023640.443271-5-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211126023640.443271-1-sashal@kernel.org>
References: <20211126023640.443271-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TJLbddrT;       spf=pass
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
index aed17f958448d..acd8eb8c94cf7 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1898,12 +1898,12 @@ static void session_recovery_timedout(struct work_struct *work)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211126023640.443271-5-sashal%40kernel.org.
