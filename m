Return-Path: <open-iscsi+bncBDTZTRGMXIFBBHMU5T2AKGQEWT74EPA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E7A1AEDC8
	for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 16:09:34 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id x25sf4828031pfq.18
        for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 07:09:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587218973; cv=pass;
        d=google.com; s=arc-20160816;
        b=C1vsQfLB4ZgSc5fYVUkQFuNESodIeGhE0luHYpVN+284FYcDIuT2/imfH7r3hBHUys
         1ALUtdyakTou559OkhuYKDssELvB7QjGOgklloOMb3BMhONt1XN8dbFjgxGpN+9K0nRE
         HBSZerHhuvNDev9GpVcAqhS1bSzgXsmh3kALiCehKHLnZNvNJySx9PBm4km+b4xVIZ9h
         vZ965QbsMaa+1gXRe+AfibrVsUnUbV4e1x4/6WLOk3uxU40FkTjaFVY6KhXq8Hz8gRm8
         TeXCmdkVth+Zi/sTInnWb9h4Ua/UYhYMF17sWb8f+tGI+hI0cKro8CDzlsnR+sP/JCRP
         y0iQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=6CDqoRZ/0jJzIJ3Ho8/24uNxjegrfvL3P3O/Pv/MF0g=;
        b=PIGINLtNKdfFp/5BRNnRjyyQFdSMiUkNgf5I8GAXrrRp+Jfl5q2n73W6LDzpbMTCkx
         dw+0uXJVudVengoZgnyeX/eopFzwMg6PbsMidzmBpHxhNtwxim5L9kYacYLVh7plkLTZ
         P61E1ESGEUSTI0SZ0JUvRiq9hwWfSH4fKM4tjWFzCh1QMRo9w51GRNy/+AUt+IPopGN0
         eMjfxiqSKgjt5VJ4SpR2WEj0LS8FVsutvPbjvnfNVvHa49GoqU/VqeI/FH2Z+NuekZ1N
         guvrxA31sMcBRIABaJX3xk2diZdzyrwvS/pnJ3vLUVSNYHws3rP27Qp4C06Ahm+fy7cS
         5qIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KpxAKAEN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6CDqoRZ/0jJzIJ3Ho8/24uNxjegrfvL3P3O/Pv/MF0g=;
        b=s66aedYemB21OnYec6Cd+Cobys00fz6VIi2DEaWiNAh80MI4TIPkRBAlLXj3ELBioN
         ArpgIUsTIKpcMh3UlphHuLtuZfQ3Tpx+DOOv1k//Ulm70I/ZscFTeKUi0S908Lfp8YvF
         h026o3BULbnB3YvyCVCnmCMAtdw1JObvpvDExBYJ9S0BBFTraFuSRMiTMWJg8IROPYmu
         7kw1QgXuvnbbuAqMbUtwDuy0cYYn5BVlJcSAGi9OpKFFu073Tp0xvw44rkhabGDaRxhh
         CYYUSfZNcJx9LgZeqOzKdXqYLuI+va86HgzT3mVJJyhwuJ3O147ClGZkxUqxXh0h9FUs
         C1IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6CDqoRZ/0jJzIJ3Ho8/24uNxjegrfvL3P3O/Pv/MF0g=;
        b=iqB/lRf+UX84Y92JBP77zxE4crjJIqh5dpcxA2IRMzNEfjf8zGdyJZ9HS90Xv55CQR
         TOpXfHAguWfY02qXWyBeSSujFVdYdE/sxHFtFs8YepIS9g+1U476kT62K6XBYut2DbCr
         USW5GqQstX6M2Fl+kqbd9DpXe1SBVlPDXmAZ101F3hfwtNvFbXzK2MRhbkNYY42ifvyl
         4CjqsZkmgYimaaPbiH/KqJVsPEPAJqrKHatQpnQgW++z416vks7amYdz1IbzjcHL1IaW
         RXvNpbQA/p6lQthWXsyW/6iEd3JPHPY2Cid4+HqT7mrbfQMSXEe6WDcYCBjpVwsLqrgX
         yQSg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuY8y/7gCRTIMy0uW0LK8TX3q8bdoeE6PEt17hTzr6A5ewHs2x7O
	1mKVCxK1G8o9Yrp0bl9z+PI=
X-Google-Smtp-Source: APiQypKtd+rTfGTAZk2BG8Vmf80P6sT4iTcqlhJvN3tc5ZK+zMywjWZKrN+AXzwYI7WsE+5nZPJLYQ==
X-Received: by 2002:a62:19c7:: with SMTP id 190mr8646992pfz.27.1587218973340;
        Sat, 18 Apr 2020 07:09:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:32f:: with SMTP id 44ls5261742pld.1.gmail; Sat, 18
 Apr 2020 07:09:32 -0700 (PDT)
X-Received: by 2002:a17:90b:2355:: with SMTP id ms21mr10833464pjb.163.1587218972837;
        Sat, 18 Apr 2020 07:09:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587218972; cv=none;
        d=google.com; s=arc-20160816;
        b=UuXu6+oqirXkyzQXf2zpNKZuf3owzt0b4KzkivYzZkqCWNtsnM/D0YEDj2CS5emmk4
         oYCiilr24MbZAcutVWsZZjUi9CgdFEnuCZdCIywfa6cMUskGRxmiGKKyv2tD7TOYxRZN
         Xvio9nndguMVePGElKFpuRROvBjuKCaDnsDJDa+cd1U0TIOboC+c566dkYHwYH4uZw30
         Xdq2/wmjw0R/PZs5RG5g7EAhKyiXdO+oHi32m9PAsJfwu2w14amFnmHIe5p0YUgbTARk
         HNb372CMCmMvQbjywPDdL8UO9WAzPrZreiofoLtRGfTbTmFICcumbj328cmPKZY0WjaA
         mXHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wovx1rfLb39v9HLVAictmr0GxTmvEMp3pdIwhqt0VjA=;
        b=Wz9uQoc/hTBPF/ojHGBWOvVD6qDvzNlKwbg2Qvcfs/83viiqNarlZoG9K+V5ZCU1Dy
         ji4y9HTy0J3dR+NsEqa3pM4zYhQz5CucCscxytfdGbvQDQ3rQAnkSew8znT9IJAjTcmv
         pf6YOaJAikpKTRJGTxOIqggnRPsuFeHXa5GKEw4CTqvQ+v0NWQxYkDWjq68/nqeZvsiB
         WG8G5TZN0xb5xrhn/EfzC7oUkn2xzGSVa7/1O4q8NeLpXOwBCi4jnFhgrt2cPL2vbjUa
         OKnZ0QNR/A48t5U7+CREdz0gmnEcnidyXzlt0DYEWmycNRoP6e8/gCtidZBxEEr6aud/
         ZAcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KpxAKAEN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id np5si520385pjb.2.2020.04.18.07.09.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Apr 2020 07:09:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B134D22253;
	Sat, 18 Apr 2020 14:09:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 18/75] scsi: iscsi: Report unbind session event when the target has been removed
Date: Sat, 18 Apr 2020 10:08:13 -0400
Message-Id: <20200418140910.8280-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418140910.8280-1-sashal@kernel.org>
References: <20200418140910.8280-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KpxAKAEN;       spf=pass
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
index 271afea654e2b..a5c78b38d3022 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200418140910.8280-18-sashal%40kernel.org.
