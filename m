Return-Path: <open-iscsi+bncBDTZTRGMXIFBBBGR7CAQMGQE43LSS5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B89329D67
	for <lists+open-iscsi@lfdr.de>; Tue,  2 Mar 2021 12:59:02 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id lk3sf1770112pjb.9
        for <lists+open-iscsi@lfdr.de>; Tue, 02 Mar 2021 03:59:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614686340; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nt4vzkwWdpZ1ltnN7HGW6wnryPfxsKhwHftVt9PFdtTBb+fgI17NUORWEBw2MenXOA
         dDcb0V4lw6CjwT+K8y6LT3TL+nLfMHN+MGxlO5Kma2u1jqcXyItNCMdM7lvi3yJCEIZj
         gkuAwD0HO6RTcNrLzo0LwhwPWafCx1Aos7SWbWph9sQtklVIy7SfEgXnGDTU1kWtypjS
         cSGGk4R5/g+OyCmvx9cmLzlw6FomSiWnB+Ah9B5D93qVJZF/3JXX1pZwk0Ae4paK2ZJC
         xN5Xq1W4ZMdesjfgfJXaTaPMGh9UVG2U8bO93jolVPYUcDSOxAhAnYgVz0kKqefJ4A0A
         H4lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=S8USaYkMd8m5CE4EaWmlwQ33b0557ulfao1cLglIajg=;
        b=TWC8oMg2iy4wP5lVcaw/2hf7qHOMOfCsgpj/Bb1h/xX6maUQZktAyI3a1aOvVszmKd
         jhPxd61Brwyu1dE0Ub0QfUCI7RDBfi9PnBHG6f0dsiMLpmpli1DTrWCqwq7OE6Zq5fz5
         NG+TB1NzHuHs3hZD6idxKPOTKi4+/2rsIlNFIg4tQy0wiyJ7k8PWAHOkHEqpR2WicetG
         54BP8G47gtf6g4etaTZu86BrMPkVG0NkEt6iA9D+gWCyTqRmck2sxKay4GnCGkjqvqk6
         Lpaz4DhsI3RpNAVgj4p+O6VKD/gIHTbzfpUk3B0HcEkDaaAw0UtNEWCZYB9RBF3EMLbH
         /gAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qwUhzQgK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S8USaYkMd8m5CE4EaWmlwQ33b0557ulfao1cLglIajg=;
        b=DMpT89SCEz7idKVLhGvP4HK4VCDcRZbUWZGbWS7ZRfm+z1iCjFJfJiSitIxb1C3jbW
         9dpeo/PapfSzdGSnVlVjkK+BTXq8amnyoVdv9ffn9cGiN5osGka+pfkNM+hBvcDa4JQK
         MdFncIkiscsxvni2T1DLlT9UtLFp59haFTVBVo8qhlxPY2/Lk29dkCnh9QvRLvF3DAF0
         0TJ5puBk0TVl1LJ32JS/gShmM3wA5Bq/ofGdEBziolzcCgVGPVciwC7P+vuKe8z3SSgX
         pBMt8JcsFnqqwWNbGV3DWxLCdpPaCgYFdBvbJNMsa6MzyM0FaQ3K9/F4KcJS74AofKQl
         /TJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S8USaYkMd8m5CE4EaWmlwQ33b0557ulfao1cLglIajg=;
        b=IZl73EQhLVAEh3bUhWSAnuFGbYfAMxHkdgUr0xVY71c8hPB4qcurn/QNHGtLS8ycGY
         2DZplL+urPV4ySRNBnm5O64Il87DcUlUWcrKhmobhMV9loUYBcg2tx+oIujIK8DWQtwj
         KSFlc9bxqzKI11xbtcH5tSqjQShGFC58mxrztm6BgxcZzM+8YLdn/QQDAqTymxeCO/fK
         92I+nDgtvjPI5hDHTzMv5s1PZykCqmRdQFDlhZVCKl65z/Vg7gyfe8iMgYpDTcgwSdAK
         oZGnGJoQk15AyyPKa3kw1yhjRrMdaan39OYVNnooiX+Qt0/SIi7RdwcC5NZJxB4qliTE
         E8uA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531UzS00gKIEhuNhVXy94VocgdAqdKfjw+f0Qj/9T3gH1O7jx6/S
	jQyRvjLFLcmQ9EzjQ+QvzxU=
X-Google-Smtp-Source: ABdhPJys8yG+HmUqfPAHC38HEC1vUHzHwR8+JbPzudSbZLlhCHwfe3ky/BMQW0WxCII+WVeKTKr0aA==
X-Received: by 2002:a65:5bca:: with SMTP id o10mr17061366pgr.248.1614686340684;
        Tue, 02 Mar 2021 03:59:00 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:6102:: with SMTP id v2ls8299002pfb.1.gmail; Tue, 02 Mar
 2021 03:59:00 -0800 (PST)
X-Received: by 2002:a05:6a00:1a44:b029:1d6:4170:ee0b with SMTP id h4-20020a056a001a44b02901d64170ee0bmr19440784pfv.57.1614686340035;
        Tue, 02 Mar 2021 03:59:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614686340; cv=none;
        d=google.com; s=arc-20160816;
        b=00a+RsLd9UMutTWJqRU4j8JtOEZxTCjf59UfxBt5o0wi/1EWmMP7DPlZJMmNoijyfF
         6qPQQMJAtRDpBH5UA1nT82C4V95uSnT1BXqxsRPFohrxhiKhGh/qDc60kV+BJRPnNa0C
         VqnSWE7nLj+8F5es0SD+v/b9w5y/6I8yOeX2M+ihatJ7qn3CI3YDYQamLYYTjtXoq6mp
         2wtAZvgIKz5cDgp31rM715iZAC/XDbTEIBI0xmti81K1aZK4qZSnZuuzQu9RQHdaXXiX
         HKsVaB5fWDI2dincFpYROJT4ka5vdFfimlmlcGVG0oC1cyvwjnM1JLADiyFYm+3niVVC
         M1+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mWy5JOHkrwxiYJH7SqkoRx2D0FOSI+DkfN6R15YEenc=;
        b=A2aLXItyhrH0xR6LanYt4cQe+L5ZiqG3KgRZby30DCHlzSBMUMw8Q6H8v7hBZkP9/K
         yOg9oqPrAcUYGlvVgcRnn8L4ehYS/O5eO5Q48b0IMMYNZH18nZ/65U8e65IEwOXKITGx
         mtcet+rRC+2+0yyy0mH1Gwkr+qbb9+DZjMmjYb1OXwXTLxjSUhFugpSfnSesRyR76LY0
         YaaNSr5/HUm32IMdL5QTIwWcw+56Tws2hMp9nunrseUD9kmjuXKVdnlyvUfm1ryvdM9f
         agQpDu4/j1JV5YfBFAirNM6Lsi1AOCcr0UCF8vKjAAdCzCFpJs79oZHTqzCBz/wriTdx
         nFMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qwUhzQgK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b8si171643pjd.1.2021.03.02.03.58.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 03:58:59 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CE67564FAD;
	Tue,  2 Mar 2021 11:58:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 19/21] scsi: libiscsi: Fix iscsi_prep_scsi_cmd_pdu() error handling
Date: Tue,  2 Mar 2021 06:58:33 -0500
Message-Id: <20210302115835.63269-19-sashal@kernel.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210302115835.63269-1-sashal@kernel.org>
References: <20210302115835.63269-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qwUhzQgK;       spf=pass
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
index 1c69515e870c..5e373a3752ba 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210302115835.63269-19-sashal%40kernel.org.
