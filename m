Return-Path: <open-iscsi+bncBDTZTRGMXIFBBV4QQGGQMGQEC45ECRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DD445E4D1
	for <lists+open-iscsi@lfdr.de>; Fri, 26 Nov 2021 03:37:13 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id k6-20020a0566022d8600b005e6ff1b6bbasf9937392iow.8
        for <lists+open-iscsi@lfdr.de>; Thu, 25 Nov 2021 18:37:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637894232; cv=pass;
        d=google.com; s=arc-20160816;
        b=O5J+ILJWApLWD+k6lfhaS27l89H/1Y8H3uRhboHnDbXuFHpEKzuzs1J/0cvHKeCPu5
         pdiBGeX6+a4cKVK1w7QfP62DxW91kOl7/t2t/bKt06XkZDLwr5jQ/oGFAJvTEYT94etA
         0u4zuB1aoaz1kluur1Du0oX1s3A7eJVud3V8WFlzF+3nEN/Okv+QR0izEHJhbUBORkNX
         FGPLAX0DbKplv3NHfwcljvWvHZl4V4NBJhJw0uex91uk1TsdKXtXvAgcMJ3kYWeey1w6
         HJEdm52Kp8tva8QBEb9W+O0vWG24uIs7QpzqlslpxaDKgp2k93//kcFtfNpiLVjKGWWY
         7kOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=sVHSXLLwFqkA2QuwfQf+k6SF/DM72RZI3c561PDUc2U=;
        b=yxVX5iF8hfR3qjqM4GL/LklHkpdd/MdwszFJIwT4lwizGIbcYdGD2rhDN/ACjl4am5
         fQN74ZTjIGiszvB7zmpZfFy1RvrXExmLz1FMW+cgT7KAHF3oskEAR76+xMsYm9evGhgj
         iKjEAdj5gNgTqmunHrjWR78yAhWsP3OMB4LqXGo35BybqbCOy/NFdrqT2lSAwi0LRWaj
         NYJFK5h4v4ZXHEMIoEOBmJn02ZJ9w+wCGohSS2sXVwXh/pl+eKt06L4Q1fMyYanKJBzJ
         82v5DBEwXjQ53SuGasPCluJFcMt9p2/8jjOLX5eFI+RgwTqAXxagOzNAZXJU9hej8u0A
         Axcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LOdLKuJ0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sVHSXLLwFqkA2QuwfQf+k6SF/DM72RZI3c561PDUc2U=;
        b=IqOfc/oZtnBvBhighsFjaC8Z6oItS01gDVk72IfLJYBssiJcb4LHNqn4YCCU1BcbQB
         UPHF4fvkGJrUsp0cvdQLjZkc6Xku8hd4Mxx6wAnzMY78ADFFJFLabp0eATB2ifbl95Zi
         YBhQIONOClWx17M9RugnAyvkYyUjg9PjCXjJpdksoOwBnUfBTHtNNO+RhBYTCvhNMgfD
         Eb16CRJUnHnep7EgUNl8kpbdLXcwlkTeTA3qii9NKHgP0kSguE5/88uoRT6D66YyzRc0
         0T66aXABwrk8kELJr6jq9HnLqtceOiVdGl06NMsYaAeUujqv5hdxkgJFUlaDYOoimMw/
         6TSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sVHSXLLwFqkA2QuwfQf+k6SF/DM72RZI3c561PDUc2U=;
        b=hp/DosvBloB/0KZ57W8i3hsE9rCstxq1f3AEk8zn8j1evuW3IVaqGqC1txjtylk9/i
         c+M7/gaIW8LJAaqUloD25F4Hv2glPcwFzt43pvz+q4+Z7uihCDaXlcWTt3ba5IcP63nK
         qquuvs+Y+suHH+pqWDzgm6I2UhKHfF/mlihK2ilaZdvZhQKGkAieuXK6Gy/POO+nFMIB
         ml4Zr+0dmHG3lwcitA+XShgnY8B3zuTGylFtbBJipeeRKxiVcu6dWJi1HusZgiVCdbzY
         hjIeYHannEeFCLbP/DTJXWuwv6zgePx94YKJLOYatx9KnVVCn6fIhB8nOlQ5t9tbJZNS
         jaww==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5317O3O5o2GCdJLSDMOt8BIpsQxzQ8DctTgEcanAJTDiOmiXWFP0
	jwowzYKIwCQkGTiaTYySygc=
X-Google-Smtp-Source: ABdhPJz/WxN0mD2pmjZQSs9Xb+pc24YV4muPfai/js5n+oWdjc67JcYBt/JU3uwn6l674NKeB/huig==
X-Received: by 2002:a02:9586:: with SMTP id b6mr36288045jai.24.1637894231228;
        Thu, 25 Nov 2021 18:37:11 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1a0f:: with SMTP id s15ls659682ild.4.gmail; Thu, 25
 Nov 2021 18:37:10 -0800 (PST)
X-Received: by 2002:a92:4a0d:: with SMTP id m13mr30194630ilf.152.1637894230773;
        Thu, 25 Nov 2021 18:37:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637894230; cv=none;
        d=google.com; s=arc-20160816;
        b=Jxot4U3CfPI/h4wcXgDVAnTd3rfA06BC/+4bZILI/tErsdfT+481WG3D7pdwvuuDFA
         JBAMYTyH+dcSaClKm+R12eiOZtvWSEv7AfnHim8DM9WhWIauRjadPrmEyVAEZLb3FHxo
         EubqXHZlD41qOQFbwC4HzJZe2tAAAKkudqVwM1MyMSgPRq3AauZQDYraLrcH2pRknszp
         w8gKg43sf0L6e/FMpOWMz2FhVJseizPM3dZRrqkWUHao8PavIRzSqrV41a9I+q/pf4GW
         UqML5ONYNt1c0oEmhE4IIJfXGYBldbdtRFnE03sns5QygamdirE/Qwd1uHP2xijpGPwf
         WDyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DEFp3gtkisQ1gJ3Ca0f8XWGNc7LXCYlIUU13uJXB2mU=;
        b=wUV4/2bdU45RU235BhiqmoL0UW7nQ/PyE68aXZtNixNbfJFB+J8+o6zRyJlGSiQ/qm
         u8lERLbeKVqvk5VdpUf9h4/9AABYKjaaPQHY5md9eNO8yQyb0UutqXaSXoV3OnZNF4GZ
         aKh1MHM3Bd7/MUIfbrt+pI9vYfxhLFube7vxS87rTtkuQLzL49zyzlT8WrUa3RJ/THpd
         BC5I/kYbn5WvZ7ORqqXHP7Ep0eAFJ9ZTAO8Or4Y/sEv79stbWlBLnFldNdDLfF7XOVTd
         2mA1WJHFxMve2fCM0g3H3Lv8Mv5ZoAd4zd00prN/Oa+ShC1Y5x6c70KGY0htXRO6DjaJ
         XvCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LOdLKuJ0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x11si725001ilu.5.2021.11.25.18.37.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Nov 2021 18:37:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 043806137B;
	Fri, 26 Nov 2021 02:37:08 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 4/6] scsi: iscsi: Unblock session then wake up error handler
Date: Thu, 25 Nov 2021 21:36:59 -0500
Message-Id: <20211126023701.443472-4-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211126023701.443472-1-sashal@kernel.org>
References: <20211126023701.443472-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LOdLKuJ0;       spf=pass
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
index 9906a3b562e93..269277c1d9dcc 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1896,12 +1896,12 @@ static void session_recovery_timedout(struct work_struct *work)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211126023701.443472-4-sashal%40kernel.org.
