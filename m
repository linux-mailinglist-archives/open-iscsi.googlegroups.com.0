Return-Path: <open-iscsi+bncBDTZTRGMXIFBBQFE5T2AKGQEQ37KN2Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A6B1AEF71
	for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 16:44:17 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id i21sf1538169pgl.19
        for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 07:44:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587221056; cv=pass;
        d=google.com; s=arc-20160816;
        b=0+GxNiLXA7OILqZgHw1IWEqmP+KsM7fxmSNYBTDMzWXb5TiKLfPfJTikRzwF/oa375
         9dszMpTGr7BNh0CJvvHX96mNtcZLZYVqlg6p+lhmBALSfMXJmCLmPViUk0mTXoMNKKOF
         udyNk2sTPlygjAHYYCFwfncGdtl6bh0EQJSUGFmXN4tNzFq5PZ0wxcNR8KgamipPPmrg
         xWyE/pH4mZVQmUz30pzncQFARnPXxRLwtBecx/rQ+azgv+0oetVtNOJiJ1N8yB2KX5D1
         melYjeDAWbrY/SxY6rM6L2AyWNUTdolI/IIJVWGo7udx3oKvmuMK9yVexU6mz5lFz+vm
         Fr9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=SLdQJwRPv6CSbSJ55l2WuKsEa10kCMjEeWypwOQzMWs=;
        b=cXq3R36ez6QYFND+nB++o1GBU+0VYtRk1FQnzzccPdUkEkWtgg+nbTW05c8ab13iab
         kMk9qfdRtlNPGLnSwQMZT5lA7m0GY0ILdOxOR30VLgfJ3enfq6vJkp5+RS/DfCdpIh5N
         fafQ1sSNaMeng1naegJa998RBb8uFplTvjfTJv+O3b4F3VEn4nEepK1ewQ/zc39JwHsf
         x0uN+J6Xy18uwIVXULWSsB+eAEObAd08TMPUELBZ3yIwK/iUNvW9/cij6rLDTQz/nbwh
         biKKE7Uw+b+1reEqW0xN2yzMC/WFoISUnrBfaSPuH+57As5oR4IcMFhI6tC/gda0Heqw
         +HAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HEnYIvs2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SLdQJwRPv6CSbSJ55l2WuKsEa10kCMjEeWypwOQzMWs=;
        b=RJ1CE9cAl02GRK8sKj4o9eBMPPvVujPxZVbRSv7PI82lxcwb2WCo/bazatgGmgqKmA
         tRsRG6NSGQq0Jp9kVdXKSHC7U01O0SIDdN5th5PeQsaSMdOya0uO//2liMAt7CmwqyMV
         DaPUtGGVRj8y76LyPFf5JANtV7H6koKwbcgynx5PdQBBwQsvsOanIdHYGRmDngh6fveK
         RpCGJXSLFalm+csipODjeQlBiUB3F5GJxNaAWhL02wn7xZWtQYqE/HHQDBXgDe50IUCG
         VbHiekZYJEEYbgXNly9kjHF/iYudYEvMTo58kczwmb6SYbUmqOcbt5D4zBv9PIEzPrQL
         pzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SLdQJwRPv6CSbSJ55l2WuKsEa10kCMjEeWypwOQzMWs=;
        b=kDnfrnp/9CN3vkM4y6vPiGR+3YUTqDIeUMpgE8Uf0Ns8R5noXraPeMKTfMhw1P4BM/
         Iid9PrLR3OJXLUX+Gk/YMDYVQ4nFK0E6hTbNM0wWG1cBTCkeaxdIMOFGZFkkfPEjQZTS
         8C+I23sz9bXBgtt9YxCd+rRbCCRtrqn+WIeUPhvYshKCQWV8j9u8KWYlN17dVdscHrUg
         eCZTP6i8ZfUI4ZaJMiBOV0czqP3Q14UZuRcLGRJCafiA412caWN9Tf/iqjiCDWT3w5DL
         +7CvJaVkZf2ZUnrjgF6KrFmWMLU5V/Q5tfxcq4FgEPFIc1b+vRDc7mxXuObCsatwVGTv
         WSeQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuZfAl5Bpbyc9nEvIAd+qnfdS+AHDZrvjY6UxDLA5Uowx1ijMFER
	his7rLQDrxSLcp/0TU6GP+E=
X-Google-Smtp-Source: APiQypIMZ3PCO43rJyflF59t6EvFfRquU5SmphvzYoEhxaPrD6amlwqVaazYG1+quJlFnf8AYuAWdw==
X-Received: by 2002:a17:90a:368d:: with SMTP id t13mr10334495pjb.175.1587221056340;
        Sat, 18 Apr 2020 07:44:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:f1a:: with SMTP id e26ls5040368pgl.10.gmail; Sat, 18 Apr
 2020 07:44:16 -0700 (PDT)
X-Received: by 2002:a63:6f07:: with SMTP id k7mr8638404pgc.274.1587221055946;
        Sat, 18 Apr 2020 07:44:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587221055; cv=none;
        d=google.com; s=arc-20160816;
        b=L/gR6r0lat/QT8ujru4hYK/hkQagrMZ2PmjKLTcM+8Hnrgwm2P3AxsTMJ5DZhgeZ+p
         8EDsVtdowoebx4J53p1bxSDg9lhGSZsGcnxgBqBA4h8yvZvdKGKw51A7oHsL5mbxzKVM
         oX5lHHDD7LYGyFIKjz5F0QmZimlg5riNql5SlIrer9zw4DW4RTlMy14Mic8dvWxBcJsb
         1hAkj47WRybQfPgtqcieN9SrYzzdZm4JlxbmOXFLwmCp+XPofUij30P2ft0WjwdEarV7
         I8iWaB9ZGjNPLiscmlLXM6pI5CoZ37cCMW5N6BhABU4F0uIuk9DYzeOlQ/jjVb2bfdDa
         zH7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gTARRp6ztq5UY77meJJ7SxJQaC8yspM2sMBINoi2L8Q=;
        b=h/aeN8ygM4QUJAJVBXFpys4mk0zK92/43hr0a0F3qGCL2nXY+R5r/Op+Lo0UuvNAqn
         a4IX+fXI0Hjf2GwP5QH6Ui1TJYDagAzATrVHvMxA6p77cg4PuqRr1qz5G/AEL39kvpTg
         U8zI6hVLGF+2+9p/PoB9Nel5yOFT90wakTbX0IfiGbS5JeP34SAZ8aPmD8cN+zQjVBd5
         3Z/B+b7J12C0Fglto3C9EpQqYZ+WNl/sIrWTyWEGU67NELYEIyl0EjFBSM/ietF32gIe
         Nn2GitRtYyl/NVBj/muaCCbe8m71A7xO6hrNotDRsWTNYpR2nYrLGcV+P0kIQa1qAT0g
         QDaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HEnYIvs2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ng2si579691pjb.0.2020.04.18.07.44.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Apr 2020 07:44:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D863921BE5;
	Sat, 18 Apr 2020 14:44:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 08/23] scsi: iscsi: Report unbind session event when the target has been removed
Date: Sat, 18 Apr 2020 10:43:50 -0400
Message-Id: <20200418144405.10565-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418144405.10565-1-sashal@kernel.org>
References: <20200418144405.10565-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HEnYIvs2;       spf=pass
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
index fff9c4d0f7c80..42b97f1196232 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2016,7 +2016,7 @@ static void __iscsi_unbind_session(struct work_struct *work)
 	if (session->target_id == ISCSI_MAX_TARGET) {
 		spin_unlock_irqrestore(&session->lock, flags);
 		mutex_unlock(&ihost->mutex);
-		return;
+		goto unbind_session_exit;
 	}
 
 	target_id = session->target_id;
@@ -2028,6 +2028,8 @@ static void __iscsi_unbind_session(struct work_struct *work)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200418144405.10565-8-sashal%40kernel.org.
