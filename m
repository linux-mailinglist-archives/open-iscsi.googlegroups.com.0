Return-Path: <open-iscsi+bncBDTZTRGMXIFBBKUQQGGQMGQETAHTIMY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1F645E4CF
	for <lists+open-iscsi@lfdr.de>; Fri, 26 Nov 2021 03:36:27 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id l28-20020a25b31c000000b005c27dd4987bsf8623768ybj.18
        for <lists+open-iscsi@lfdr.de>; Thu, 25 Nov 2021 18:36:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637894186; cv=pass;
        d=google.com; s=arc-20160816;
        b=B/7OGiA6oKyLod8gKyK8d3FGc5pNy38//zx9TSSE+ORbmwI04g3DSHrB3+dKiQjwHR
         AbvMQan+68xwql6+TBOyRxWON+feaW6JihOw70RtOZbk/B36TqcUOwBzYsbhc8dqvArh
         s7nCJ4Tv/Ye5d4dAOdMUaS8JvTL0rM6zMnMqCU7vg0zSjr8VGWvOmJ50XQ/Nz5ckqera
         QZi8C9GJwtuzWvjfDduMytJl8rvF02Avb0TPGNCihCfehs5yQ7Kwukdh9xRpBNwAVBeq
         tXIfvwCLOso4gqp2Xh3IZ55XtBLCnrlVs2AdsHxlOsvDDgbrNRX+4+rGMgamOGFOXqmE
         lTcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=pc6884pfKOSMAcsuqkCdvEbGk9if50VgFsZ/+fUkYZQ=;
        b=NcranQcl/d+MuCFuC3LXd7IyJeGA9jcFlT4Dae9JgnHjVuwxIRPqW5GB5Wgg8iOWm9
         OuZkNrTuj0bP4t0IOyedxktwiWfu9pCsLgcR6OYG8STIjBBjs+uG1lNokOI7esuPR5hw
         EvG1cErr+mv652RLORSk7UFWvtt1rpx1gVy2Z6UWD8I2BqTVlcl5joca3Hdyn4Y9TXT1
         u4kNoghM9/LrtOIfPxF5647a/Qualxml0sKERxux1e+5HMdTlbMQxbYvylDGH0XdYlO2
         oKMfzlL3+b0ABE/f2clL26hY1zgl+WsNe8yznQY/btrr8EpDBDzRSWfExjY3KDCpuhVs
         U1aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cjL5IQV3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pc6884pfKOSMAcsuqkCdvEbGk9if50VgFsZ/+fUkYZQ=;
        b=ODJtx4tfv9aweaqBdSixDXt1y+Tu2AOUM3fPycxxcAejl5TmvtKmaIYH2dHoIHDzUH
         8UVt6KMGekRzNcJBFpxARN0Jkmlr6FduqFnBkTtxxQsvo7/6bSU45H4rwfOX7igs9XwI
         0g8G92K9EHTXVMiZMEloOcjWdpH/G8HtCEuR7Q0nK/bhWy+ik3ZH17MjgkBNcjt8V1cB
         Gmq/fCwqCWQ2xm/9TE9nvjFp/cZdFvqhpwY2lQDe/GOqL9bd9RJwLsPkfCsvOBnWTFRV
         wERCZls8ssq63KsHMYrnpx27BeLJkFScuwcl3jhdD0N+qwGmc3LbixTmW23NnhW7dQBz
         Bvhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pc6884pfKOSMAcsuqkCdvEbGk9if50VgFsZ/+fUkYZQ=;
        b=aFem8OMBggUs5bmidBGMdnE4i8Iw1GuIvDMZvH86f7/lgbD2c+TzmyiJ2M3Be5nlJ8
         J7lVww39g/e+hEPCpGPFRMlT0N8i3CoDvKrlFbcKaO1yyysDWnUK3Jy53Ir/LRKptsPh
         Yc1n8u5KL3uYOliv1V9NFovtgav9NyurwatKWyxeGccVneo2dub0BH0cw2RPsDZ2jCnt
         KvtRSrWYY60o2Y+BZkITw+KmDdD1495djHPJqj4DZvqnP2OgO4tSR35+7sQ51v3AV7Qr
         IMtBaKBwnIkLhefZSKV4xzIwIVeOAsaHYrJSPwSm+2hISlJz6CegccWsT/5I4pBI9j9W
         n1VA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531j6EzbT/0KSGpYakpLrFXV0MOyc2AENjRk+19pik67gpwMjYXe
	9JJxsE5nTWB3I2nicshEUdM=
X-Google-Smtp-Source: ABdhPJysSPJTz2QpYPJ5CcM4Z6FUTX/79Nl1kY70LImyGr7TqRJLA66K8kdrBfJMBhxwPBk5VNO2Og==
X-Received: by 2002:a25:1888:: with SMTP id 130mr10968770yby.301.1637894186230;
        Thu, 25 Nov 2021 18:36:26 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:ca0e:: with SMTP id a14ls2924480ybg.0.gmail; Thu, 25 Nov
 2021 18:36:25 -0800 (PST)
X-Received: by 2002:a25:40cc:: with SMTP id n195mr11820446yba.305.1637894185664;
        Thu, 25 Nov 2021 18:36:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637894185; cv=none;
        d=google.com; s=arc-20160816;
        b=lsnqcbRs7yUfA5mMttrlbUcSCtsrdBhS8MdFgOCW9+qJcqt5S0hWe0QTiUNoYu2wHc
         w1Wy6NFutVHrSLtmySjXJLeyqXFuQzVhf5AZDjiJfaxW/EFaTv/xoJ0iV5FAGpPE+VIM
         GS4kfVXPG/o37Q3zpjNPSczGwVAqyjilCgOby43WlDLphzEbww4UQvHuwDBh5h4I82eO
         9w/30kyDCnFP6/DeLA1V/iKPWIMc+ubq6Cfa3KyaDbdmUA5kexMi9+6uDc+lqoO+RUTS
         lUDq+kPRwycbxCA1pCeBTNGt8VGn+8OxnHGdZgsvo8dvtVdTwZA58Ll3SaGIpt4i1uGR
         c+zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ETWm56H4vCfoWcychrNubRApkNTQ4T3bAoiHOxzhpKo=;
        b=YsB62baNopDFaj4TprWHaVTItozSlLDN+fBDRb08sGt8bcGchg//7J3Ys7CLRH48a7
         vgBgK7NQcrLXMmqpMiZDArxG2TX+tyW41HtDSQ/z5Bg+2H099u2PeECXOQWYT2Xhfgun
         CscIOtQOK7ExuxIOko5JTKypXH0LRR7onNoziMQxrOvT+VVXyXdSuO04Zd7z7zp1DjYu
         m6th6OMfaboAhpBCRNQkn++xC2Ee84bUEZmyWIYHO5YINGXIdexcWAS9J52i6QGpigqP
         fKlil3xDxOVuplkj2SsXa77NZ2MPqDe8xCW7GYZDzHZcnnJkFME2htNcEA/OIlNQZnf6
         cZxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cjL5IQV3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y75si544909ybe.3.2021.11.25.18.36.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Nov 2021 18:36:25 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9A160611EF;
	Fri, 26 Nov 2021 02:36:23 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 08/12] scsi: iscsi: Unblock session then wake up error handler
Date: Thu, 25 Nov 2021 21:36:04 -0500
Message-Id: <20211126023611.443098-8-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211126023611.443098-1-sashal@kernel.org>
References: <20211126023611.443098-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cjL5IQV3;       spf=pass
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
index d276d84c0f7a2..26c6f1b288013 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1892,12 +1892,12 @@ static void session_recovery_timedout(struct work_struct *work)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211126023611.443098-8-sashal%40kernel.org.
