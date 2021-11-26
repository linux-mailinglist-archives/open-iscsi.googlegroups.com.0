Return-Path: <open-iscsi+bncBDTZTRGMXIFBBCEQQGGQMGQE7E55KCI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 9954F45E4CE
	for <lists+open-iscsi@lfdr.de>; Fri, 26 Nov 2021 03:35:53 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id i5-20020ac85c05000000b002ae12b76e64sf8580685qti.6
        for <lists+open-iscsi@lfdr.de>; Thu, 25 Nov 2021 18:35:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637894152; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q9svE3hHYAEJK1zq9jnPk3cgCI6/uh5vrqreStwaUtYXj+P+QvPr4mtCjV5u9m7yd3
         xlG5YCqy/RszKLdY6D8ft0FxjWdXlwYHDh7UW0dfpv8z9ZYRm0C/y8uNKrxJjjMtds9h
         F2cDQt9yOE5/f0sS7m/PN7zHeenfmojwejmkH+8noZX+PnnD6DzlfcCI6LBFLI5zsFq/
         CvLZ22I3H7k6YHxE4m1VjRoWErBkMyAVkvCcSmVsWbFlHq0tpjPi2OQDZTsiib0GUCLQ
         jJ67G5hfPfnk5CJCArMyvQvyYoZItpLi+crKPKIehdmFLzG2q5P0/amZfv8n/6QFd6oT
         SL9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=dBA5bowfw87sBDTBjPYJp4udvGGwKP73Gm0XY+j1jso=;
        b=wvpR9tVgN1/4qfmPXR/kFXmNQ24vozYomfaH3kpIyAiAwAJvGh72uMt95d3VQmPRZA
         yq7VUewhltYDm+lNouVsmdISF2t0u00h1laUQqt7/veCWh3VERA1ml5MGnGltyX0YkqS
         S8OKY6deqbRmXIxSn9xd2m2016NDYF85YONzZUVMlx7H3ulawkXsUJtjDDBSvq+oPphT
         gWWJrNjsU0WrPJljKgAaxWlksh+xxZauS0W47sUK/A6PFiQ8A6+9h6VyNYn6yb1F9jgG
         U/cTwvEqiolB5/rAWFJX4hNtWMIcYwfxUCbthKTD16R4SVbq/OgBW5vLQfQqjn4sYowH
         uyhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dHcA7mvw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dBA5bowfw87sBDTBjPYJp4udvGGwKP73Gm0XY+j1jso=;
        b=HApi7pl5VnxgSX74KM7eUw1j5SXPUyFCdrvNyFmXN3B+DW9c8DDDfl8EBY1C+l2kOF
         ttBdenZU09/jWtZN2bikyPelhs7um9NGEvp4QQU8q29LkmkIwOXC2ZGOaKmdWdSI2j5O
         59QVaX1w0Kza1GNSvbBeB/yECEgEqroTv2nqHQbKTnTF5Bn+RlizAWtUbdPlREVxgi+p
         cYfGFSRt34jMB9iR19DNX9onPtHafgqFYeeE8UYkI0FQH4ekzHla5aGj2DBtAqia8kNF
         bAL4L2zEm0CZ1MQXy98gk5gbAmarKkpJtiUpmHPSSbIvCwo/6qxX71F6kCLWtrDPbwj5
         00Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dBA5bowfw87sBDTBjPYJp4udvGGwKP73Gm0XY+j1jso=;
        b=H0X91e8bB0Cl+P0DOqjlsOOY0NX41XS/1nEHBpG/Ij2vVdVNnumwkLaxwUTJYAKSzo
         Cs8iKNzJHXs9bGtLQt3X2VMAI6A/HFoE9H3zvdb5bB1oWpuT6HSpFDGMFWtdN+ZW3m1s
         Q4O3J3NXoWyGp3v3t+vrXhIj8igRpac2aB3FtSSGcxNz1aN9wZrbTOazr2MJERodphcV
         +wjRjEe92wtHN7OF6dA8p0nml7HBKbeGf1Pt2fkLsjXFeyk1y1Ye2DMNTryQZ7qZ0gM2
         nYhSTG8X2DnY8tQEfJUn2yZ3cxm4md13L+dEUsIoIs6cdhpgZ1KDaDbA12R+JGWCA5/g
         bg0Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530CkTwMBdQ0TbJDQG3dDsSljehfoHCEVrl1xeBDMnYwosy6nkyt
	vOKRn4YuuK9eLnXdRqhNoAM=
X-Google-Smtp-Source: ABdhPJwbKbHpmDcfjsgIiyAxyyfq+JIfrtJ6Hb3JpnynAesxgZeaNpGPMIivwvQHq56PkUYZYeTWuw==
X-Received: by 2002:ac8:57ca:: with SMTP id w10mr23170936qta.88.1637894152557;
        Thu, 25 Nov 2021 18:35:52 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:440e:: with SMTP id v14ls2815753qkp.0.gmail; Thu,
 25 Nov 2021 18:35:52 -0800 (PST)
X-Received: by 2002:a05:620a:1342:: with SMTP id c2mr19523567qkl.497.1637894152074;
        Thu, 25 Nov 2021 18:35:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637894152; cv=none;
        d=google.com; s=arc-20160816;
        b=WcPqVFWLVr223dNCyrkTa+OGmbMRoq5Nk92FNGw0/RhjiZY9JcKcnFur9Y848sYqva
         NDRn55P39qWQ8jFIAsgXQb0bzreQubn2xxteOYRslaZto9TZwO4B7em5XzmkTAreXoxe
         bQ8H1s+alstEm4M/7zcKIhCtLCnOMDJ/Jd/vZHCKXr3H6RoZ3ICUIWAoiY1EFFXQuQd2
         qdw3jFw06Nm4J+rTpxeyiG7Fs5CiSN856UVhMKcXyA//LpLQTAKA0uFK0aVxLnTEuAxj
         IAWxIH1/5NEAH29So1rlfesoK/pvMC0FpLfZwMvlPOmp/0NrYIT/WIYrQipKGEmefL11
         H4jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=c3v3D/edUdw6loihkudRk+ONeo1g+cTe0t21AES/TZU=;
        b=uke1xJzgDJ8T+7TWCzEzh/8dAyOz7YSzLH+//aDeg8HsVmijI6AsZOuW54c2fpqK29
         a9DgmHW69tvuvR0FRBRrpYCpikRSlQEpDCdrQaynpwUq/+3NvZeKQGne5rRkiYc1gcmN
         9TdpZVExUsOrkry7mNsECTk8msf6pKkxYqND1WPARSmOxljBB7u7FpY38+S+4RKCpQ+H
         gGfX8d0sjtWRwVK8KefwXuw0CalVtdyu01LyxRj4L+0o5dBkBVeOWMGmlimp9rCEBgJS
         kHLhc8GcyEKLfT8KoN9YoaWeDKtn9V0lw69f4gRZOrSgEOX9sJfyzO7H5kJiydMrTjwj
         YSXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=dHcA7mvw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bs32si805050qkb.7.2021.11.25.18.35.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Nov 2021 18:35:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 540D56128C;
	Fri, 26 Nov 2021 02:35:50 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 10/15] scsi: iscsi: Unblock session then wake up error handler
Date: Thu, 25 Nov 2021 21:35:28 -0500
Message-Id: <20211126023533.442895-10-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211126023533.442895-1-sashal@kernel.org>
References: <20211126023533.442895-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=dHcA7mvw;       spf=pass
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
index c06e648a415b5..79581771e6f61 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211126023533.442895-10-sashal%40kernel.org.
