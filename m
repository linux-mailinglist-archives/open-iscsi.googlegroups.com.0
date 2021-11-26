Return-Path: <open-iscsi+bncBDTZTRGMXIFBBSUOQGGQMGQEXIXGWEQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3383845E493
	for <lists+open-iscsi@lfdr.de>; Fri, 26 Nov 2021 03:32:44 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id l124-20020a6b3e82000000b005ed165a1506sf9925966ioa.5
        for <lists+open-iscsi@lfdr.de>; Thu, 25 Nov 2021 18:32:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637893963; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hfh5wDVhTjMRN/4Zyl+W0MrM3FTKxaMeCS5kLLhT1q/3r7l0W3PnuNp9rdPW8auEQg
         2f9/I+Nz4BtPumoqZ4sN+FqTwlLMe907jcOKjRdk+S5fudXOmuuqh96vCbWLZ6jrroqG
         oDiAoADA6+/9VHJ1nC55CCjpMwOLOiQM/Kq+OYQvJFzDEIw+sx4WrFD5/X0F4Pyfd+I3
         70ohtDwBmyVR/1Ya6PFeYvCtPAvUTFNyDxSXWyxHod1FAV+vOkaA6VNNAmQyEpAcAkdq
         yOz1yYC66q8mDpTQ1rLzbzOlU/BAKQtI4S9bKQJ250R9TbCI/xYhmVGxnvPuE6jI7Ovb
         wKOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Jljt758oPnjhd4gng9Htk6n9zvhUPP8cVunBQCbeuLY=;
        b=v1ZOjcpdwfCNu3nIasprmLe3e09MUmjNJCjguMjExxUBhGxbH/4F48Hsp6m5t5RhIg
         F7UbE24Honn5UFaxAxmORd18iDFj3iTTT2jj0pcEmpvWDgQgbFc9s6RYB+Y6V6yyVGes
         szKbmlSWx92RKg0/towkNy0Q7lliT0a3FVKJUTzA07qbfq3/H1/9YwY8rRubmGMMQDm/
         jrNAXa3Kl4IhA5QdoCDA4m476VlNDdjVFgOfR1I3lWo+G4Cbo2oqTmtC3U37wes5voWm
         1UA6B2TDZ4X82qagzYA7wT3qfRjP865D68Je46x6T9P47IwX8svJFgRlYLUvefc5KcIf
         BJgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Yk1hN5JU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Jljt758oPnjhd4gng9Htk6n9zvhUPP8cVunBQCbeuLY=;
        b=s89zCFTIoWKnA+nvQ3/r6lAG5QUdgKpmG50qjzQR1OGQtAK2IY3nApOmX5PcG0EJ4m
         1DQtlK2p1VFlEJ5OI/4qPNo0JrVBRq0lDut6d5iltrBt7pVN8292+4K6SB/FphUQBFOe
         5dzjw+OLPFoP6PQgmHT+wsYuFwrwetVLzkGKcQgvl4bl8dwJXeHVj9bBJcFMqPWCdFb3
         GIYk4Dn4/dYs+J0GA5XRaTWYLbPbpjofvXup6tRtIWBGCpseiVrvKgXq9lQSiIfiHThF
         9zPKXGEquYLmJq2ozlOv0RVROj1u2p4E5nEOw8kbkhoruFoWvt7gydrWFHbs0BSQ7MDF
         Po+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jljt758oPnjhd4gng9Htk6n9zvhUPP8cVunBQCbeuLY=;
        b=sz0cuvDT9e004mRdAAIJRWamMkRVWMmN4ZaF36zf2VHN+axUBpwC5XBkunP0AfVuNL
         jUeV86f/wKiPuR1LPjJ5pB3pj+QvlIsPsEKJyVXEgDJi7HlN/NUc9KvVBAjbb9PM3JcP
         wlmSmZmPN5Lsby8cgsiYFjWoyxEJDT279Il0E42ev7XPg3NbclLMubTyPYJKYIofUE13
         xbOfvCOC40clpoGUq+vjXe63sB3pfkRqn0ud9KXmRUQD4WKYQ1jzrhayI79olrEfnRLy
         Af1TDYQwGIMge3SS7dpqE8HBQ/4VYuTHELuPdioqGJLAHdHY+sMSUozIf7HlW9w+GqOK
         9lMw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532ZwzJDrkrrq3cG5CzmHj3B7auuRexXkL7ASLRnH4+z+bYA0YCF
	SVR0a55Y9ObuQutMI8mp40w=
X-Google-Smtp-Source: ABdhPJxs+kkateWksfAaNbYAnOG2LCSFH0WG7ErN1KgrgYqDe83uDDc5m8Rbyi0Vt4TwKRabhSM3pA==
X-Received: by 2002:a05:6602:4c:: with SMTP id z12mr30713134ioz.117.1637893962859;
        Thu, 25 Nov 2021 18:32:42 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:160f:: with SMTP id t15ls661596ilu.1.gmail; Thu, 25
 Nov 2021 18:32:42 -0800 (PST)
X-Received: by 2002:a05:6e02:148d:: with SMTP id n13mr2910101ilk.66.1637893962320;
        Thu, 25 Nov 2021 18:32:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637893962; cv=none;
        d=google.com; s=arc-20160816;
        b=arX3ewVV0wtMUSAJKxbfv7ZLNHDILm/73OHwpOQHolEu9/DheaBsFwQg6TMMS22AV2
         msbuJlhhYpRyFgR3u1uLNa9SmBVS9Ui78RScmg1uXTwn2A7Q3h3W2airRC9F3OYqzYqz
         wSGo1dwBzjc26fDSJb9QWFJzI4B6uf7YPYRYRNPvguoa1BOIus0jTVQRi03pg9HZakzQ
         DtM9wvkQVuMVeMCvw1FF1FWXO4AOCXaEiefYl35r1ccCzjbIL8lQn/YBCPhO7qrUaxhY
         QgPW8hrLgD9fgTHzeUHS4FlAq5Mw6wS5O1ORCTcEYQ2NPZXbXlufove51RZohopRvwGd
         e+ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZJpOYO20r54c7r9/GCNC3wMMMDCLS/+XFvngONuNe+Y=;
        b=khkrkFfuh2qNuTRpu3v/Up72mkLASSDtRLjJ0E2koNaCTHnIsb1P4A+dkZB/pxaTJu
         2iBqmdGtkhsJ/nzlOE0MQlKCvw315Vv8IaqWRB572L7RGsMcJVOXc9rkbCRiDZP0rF7l
         HUoCEQ7OyLwjUt6G9Gq7RHHTgu5RP+jIkbHGHaCKj7rV7JX3PgpO9Dz6HVB+HaDrkdfg
         TMeBHsTu/9WUA3rDvUQQckh8mo7waQUR/C3UiFBhOllXfKmDqh0rl4QpX4m1qzlJ2R8h
         hlSYbqfLTIC9l9tLuyQloYrtf/03Z5e7GbaSjqGuI05K2PWDfI52bKp0WTojwMdqa14V
         dB6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Yk1hN5JU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s4si278602iov.0.2021.11.25.18.32.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Nov 2021 18:32:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 871D16115B;
	Fri, 26 Nov 2021 02:32:40 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.15 22/39] scsi: iscsi: Unblock session then wake up error handler
Date: Thu, 25 Nov 2021 21:31:39 -0500
Message-Id: <20211126023156.441292-22-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211126023156.441292-1-sashal@kernel.org>
References: <20211126023156.441292-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Yk1hN5JU;       spf=pass
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
index 78343d3f93857..554b6f7842236 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1899,12 +1899,12 @@ static void session_recovery_timedout(struct work_struct *work)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211126023156.441292-22-sashal%40kernel.org.
