Return-Path: <open-iscsi+bncBDTZTRGMXIFBBOMK5T2AKGQEYWUMFJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A321AECE5
	for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 15:48:42 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id k34sf4901253otk.1
        for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 06:48:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587217721; cv=pass;
        d=google.com; s=arc-20160816;
        b=A/oa62keJKAkMdScQ3u8t+VhEbbPZYyszr4UqkcLxyDx2ugx9SwyRFfFsOxLvHUTLw
         UxxjZjv/4MEBOOm6TZdLju/HG7F0xx7iAtKqSvF9CbiP1MbCmB68+pbP2RIwxSBBuJJL
         8Y5evmVpeDccHppX9NZPFRZSJhdREm1KDT/bQO4y8qSVRLarsht21dJWWNLvucWay7eN
         RS1gCZVS9FVJ+kBwJ3OpA59hkPGi/kQPj99T2ZdM6Z35JOQv4lR/eGta2eQx/gxEw8D9
         6+QLA9gXEBmTWbwbtzFml+4dr+eUG7BSX8s6mGuFAki5Tw5PYM0YGAp0jqKyUk5XboyF
         zuDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=hiJcTWjoIowyryBCFv0pezDVjBdR7fp7XE90MdL1WVg=;
        b=az61wR9EL5zwRBFaK+fWW+Rr08gjU7nekIftZrAfZu2AzsOFtsJ/ep1zno9wr5WJka
         CHQQC/hFG+E0RJ+Ebot3PTnt1H+yZqlNSbaWbL8llHT7S+DQS1+Gc2EAY4+GFXAvlVMe
         qRY5lmu7zoszdBWqH2czXtWeNhYQCJUHlTMvVhvWiwfEBPjlXN57+4c++Xo5bdcxVuHx
         Z1GVbkvqLwVjhubIBuDrwrUSrhOfM0u2E3Gq2NVWwajWamA9JlrUeA+mneL/xRdYFIYS
         MDudDhhg+fhGcSu7bJ51cdEpgkUWFrq4eJzTzRHwrwuwBC8Uf/fy2eC/vDxZKgx8Ih2r
         Ltxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mlPzr8eK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hiJcTWjoIowyryBCFv0pezDVjBdR7fp7XE90MdL1WVg=;
        b=TN4sRiNDfatqs59hVZBOy2gdd+U2fSxhmsM2UMbFoiRy9UBRiTCD39Ws8lh6l/2N/u
         smjQ4pSAT3nExKt3pdjXeaQFBVaKI9kSetbisaNJCXQVrgh0CXQpXUQTaGuYjW1Yr2+l
         Mjy+U7YpJVLn6gWGHlYWqub2kEGA6/BqrHH4ElNdJto4asZUVbEEhMajj08p3odkaMKA
         6iYXcO9sbqu0vjyTdGtjCRaXeSdihm/Y1BjcVd0vPBHifQjGCzBU2E9cFEYFiXl40k7Q
         tFVSueCs6wmmzBNwGrmT+VG0PZ+yxLiu6Y38/fiY2CJjjg6qNokmtXctarT7ArHweInk
         VjHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hiJcTWjoIowyryBCFv0pezDVjBdR7fp7XE90MdL1WVg=;
        b=Z28Wn4wFW9uyRR1cfoErZ+mlW5tvWJ+34dCCwFTfhxlth0vkyQhokOQNWHdsvUnmE2
         fJMR4rxyAYy1HooYjUvVwUvcMDqCMdOnS7bz4BOpRHdJqfjOXXHFqtLiUuNnqhQB/sQq
         MoW3YfxjVmAIC5Oeo5AKM/95V1XoCWuVoLht8EwybKvmG/KcWre2DVQL6zBtbb/+17LD
         K3RN0HK+A8Mz4RdQDxIAXlqba1IakDgCR6bN4SWY2UBd33LKXq/dhFmSXS5aZaVLqZQs
         cxXte05xTYYWeXKacpP2Z8uech+oUdfhtFnCscQ4WaXLxe5bSUqpiQl8vX6bxdkPKeth
         REzQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PubbqUiibGtdOh0BO1UT55iYua0hgisK0vZnraXQW2QyeOmFfdIM
	xmft6OyPt0Jk8i3+D2gKN7E=
X-Google-Smtp-Source: APiQypLI2GUL3C2ZXvwye9aCPzM9RhYQGDk36l7cVJzOMArGQgxieQgVMpG2kArfLeS+XT9ByIXnDQ==
X-Received: by 2002:a05:6808:a08:: with SMTP id n8mr5560175oij.91.1587217721376;
        Sat, 18 Apr 2020 06:48:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:c693:: with SMTP id m19ls318330ooq.4.gmail; Sat, 18 Apr
 2020 06:48:41 -0700 (PDT)
X-Received: by 2002:a4a:6b09:: with SMTP id g9mr6196764ooc.2.1587217721025;
        Sat, 18 Apr 2020 06:48:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587217721; cv=none;
        d=google.com; s=arc-20160816;
        b=OXXQNjb+khHIWCSEvbQrywBOMTk6/JaPDkoWB6c2cINETbmQK3pIedmF8mU/FoIFIO
         Y23tgV0TCrafEfg26Fah8zgx+IMECykHp6usGDDu+8yJHV5SgngkkOEza0VK8gvCIBOI
         A0i2d+OIA3/BvD5VgYnyIqqs77N/YUPh7ePxRjr1vj6K3mNJDlwXNQwgt0crCA7L6Djx
         7jbX9DjQfwVgoX2zzXq2Esn9wlvpQvrC+w3JSPj4vx2PkJOMIpqWLBWlx4UnrzUGZ33g
         j7TriiKIvBi8PjsyyF4wTTZUc7ZQF33gbpGdER66U+0C/HFl/r1vwXzzub878/TMEuwO
         0oVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EusCCxE7PVfFDQSbT68KMIi+kv/oSU3qt/rGI7p/nzw=;
        b=F7U53yDlK0Yt552y65PwmwVhGwB8Q21RV55jT9TKjecqALOzeVHR7tVd79C2z0sul/
         7z93g8+zUqPz5vC4g6e+einEoPQXdCz57iyrm3uWv58p23/C7yCw8p1UEbHPHXffVwMf
         4J1nyE0iBks/GQ+WrZmsV0WtuB9/vqwN5lv6sFrwD08rOvTBV+lQ5tWNqBz4IjpfFzL9
         +EmjyclZxTtkox/xQVkjgDay451OM+wjyRvuwIrOjv3sno2d2sA2hfnHurbfuHz5WCRZ
         gcFgkMReDopZfn0DYNkKmGQXgHntJwnmpyNbWFWnDemM+ujH4yokMBhE0CCfqGX315eA
         JsBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mlPzr8eK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f139si732460oig.5.2020.04.18.06.48.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Apr 2020 06:48:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3DF8122253;
	Sat, 18 Apr 2020 13:48:39 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 20/73] scsi: iscsi: Report unbind session event when the target has been removed
Date: Sat, 18 Apr 2020 09:47:22 -0400
Message-Id: <20200418134815.6519-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418134815.6519-1-sashal@kernel.org>
References: <20200418134815.6519-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mlPzr8eK;       spf=pass
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
index dfc726fa34e34..443ace019852f 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2012,7 +2012,7 @@ static void __iscsi_unbind_session(struct work_struct *work)
 	if (session->target_id == ISCSI_MAX_TARGET) {
 		spin_unlock_irqrestore(&session->lock, flags);
 		mutex_unlock(&ihost->mutex);
-		return;
+		goto unbind_session_exit;
 	}
 
 	target_id = session->target_id;
@@ -2024,6 +2024,8 @@ static void __iscsi_unbind_session(struct work_struct *work)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200418134815.6519-20-sashal%40kernel.org.
