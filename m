Return-Path: <open-iscsi+bncBDTZTRGMXIFBBBND5T2AKGQEZYFLUYQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id F37DC1AEEE5
	for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 16:41:10 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id 24sf4988651oix.8
        for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 07:41:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587220869; cv=pass;
        d=google.com; s=arc-20160816;
        b=NWiY+ccX73Alq0yJgXA9u46Mv9M+ljUuYICk6pj37Og6kZqBfCrMDCE+qQvMRGg+fw
         yk4tutSWJaIeCpbJ3L5KRP+A1aNntw4EM13gaxYJASpkpleeW2Brc9FR40X649EqfJ2o
         9ViSKsoRf2VwvQtqrPXo1iqBs/QOYLlupQfeCz2mp0EcGqi3uf4SuV5MLFb8wvk4blQJ
         T8Dxk7xLq73Js9IzrL2OFwZ+ottBAlDD/URiGyLoPd/yjt/eF5NJ894fCr7n7VBLfWn8
         /2PhZeyrEamIfHYUrsM9xqXEglUlw1GiCGeqsn1MBcDPiQEheGLS1IexqenwXsMuABTb
         EhOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=FwAeILxlGiDnmTW4MYMuFS5p6SMm3NU5k9QJr3eDW70=;
        b=xb+MnQiPFTMN5DL7ZRNC9pXXNia0CqbJ0BYAnnvKYBOuactV4eg2MurXnAjHeR14+E
         msDdrJji6rWFAy73vXhfPsJo4BQ/bwG5pQ0wzvF2xN/YUld4zgFmJ28kRJQ55xN9s4ys
         2KbL5HjlR7UTaMt6vey/8X2fO30h/OeMsZsJs3x+7DXUWCgKGTqdnsLFi4l+Mo3BnGdJ
         O9kkb/24E4wTcEZYZyeLm+5Mhw/cyiJ3s6OqmC5QGuhCxCf1c+dcbRLpDc4scj7gd5Tw
         HW9LnysoWeusWpIYO/9pfXUvW9Of/pY1uBcq9lTtdqDZrz6P0Wckpp9TN/nghJ67eJdE
         MO4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=G90+x+DR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FwAeILxlGiDnmTW4MYMuFS5p6SMm3NU5k9QJr3eDW70=;
        b=dX1VItKvixCmhYJeWdg8y3nNOrn/+F4SK3ewl0enB74ino1qUCyIFKgFcTuSwueBxO
         yQGG89/sIpFXfeEFC8mRJEV++hlVDvsQkSV6lYvvm8d+7oE3ub154ooWV/N/h+88v/xq
         9QH+xmge3UnyEMqiGvsdFECnd581MpUBECeN+4PjLzd21Y062OSoMizTjzOp4G66OVmp
         HadurQFzWdFxglq5L0WIIn7c/VHWh8GrZfbATWvCU9m5TbuNlcMKd0DfxFDJ1Q7cmLFN
         HTrO274eTsry4CjQkJYBmhp3rZ616gr9pyYIIXRFJZ1CsDb52cZ8yEguwN3okAxWmfyx
         bKbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FwAeILxlGiDnmTW4MYMuFS5p6SMm3NU5k9QJr3eDW70=;
        b=Qp9WfQVh4GfDhnWQzsndlcI6vMxKmdH5mkMYtjNA3QegGM6L7D2/LNAluqTsfbRAH7
         sf1W/Yiq0iMb3HCHPhfxc+iNXG48eSou6N2dd1QXrkHLr6v1qboFBN+poeCMtfMz6XtN
         YiKbeYcNId+0bbg8W44l4Z3ptQVTbP2tfByKKD6ulI00n9xfRHcGGPjIsYFyOka8LlwC
         Q6Xdx1xt83U5qwpH+TkBa6g2ICyhxWnB/kdQVqt+8IGXnBmGmRS9lIvGndMxu4EdN3Aw
         Rl0kbmMT8gFmByryO78tfEk2QkIozmSM0LYQOwyHZzWFMlZnpVesjFBdu6dGTqYCq0L9
         eoLQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuZdFjILTidzfzhMPZ44RteKt+pd8PaFPdNBO7RfJOQByNRoYSWJ
	aBFE7ZVfjxGlUoiRwNsaRmo=
X-Google-Smtp-Source: APiQypKo3/MQ/12An27owejgkZCbd3MkYJy+Em+nYe4/7/kZX+BUn1yyWT9rRII7Nv1LGfNI2SEhVw==
X-Received: by 2002:aca:62d5:: with SMTP id w204mr5258531oib.119.1587220869809;
        Sat, 18 Apr 2020 07:41:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:2c91:: with SMTP id o139ls53546ooo.11.gmail; Sat, 18 Apr
 2020 07:41:09 -0700 (PDT)
X-Received: by 2002:a4a:4886:: with SMTP id p128mr6369790ooa.63.1587220869475;
        Sat, 18 Apr 2020 07:41:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587220869; cv=none;
        d=google.com; s=arc-20160816;
        b=tmpOVUleYitjhiT/fsghkp0Q9PI4I2o+feQQiGFh8aa4tc2+EurYgu69cX+Ph949pW
         N4CcTRPNIvKOUr+O8uOGCeFRIU9+rs4nMlhDM4vtPensqqHGJDsIkKjYTLynkdckCwmK
         Sf2l8NoDQlRdJBov2brtwGGHt6EibyvI0YrYozMhk1Ox9gd35vvoaQM1nPVLPECVwqOw
         sGDfaLCGwWluCM2jekT9ivlhUnq+lycK6ja5HAd8RrvZEURytiR2Ui6x2TiCoj8sGmNq
         8pV7dBSzfK4L8BJ5WkBooWRetF6gvUvRUgze7JFYxi2sZW1neTBwlCpvabjM6e+8SGyy
         1PRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wovx1rfLb39v9HLVAictmr0GxTmvEMp3pdIwhqt0VjA=;
        b=uOU8gN6/LDhD+Oy01vBwMtgWoFiv0yOm53nCK1aVbrxZy81CKM+TRSL2rbQ9rFbo4N
         mgk2ogk+xUBw5V+/JsWgL8gcgOVfp/CrOonpG3/qPGTgCoW1MEvAZcxSMY1tqK6DMK60
         3nDqppXC2Oc6mtfOqKHfETKDUolBqmoSPN0xYsRYCtjR0sOHebnoAvSV8OQOVSGWLMK3
         9IWxW2FFOXUnaPaGyS49BbajX4KWobB213kJ6bje5qEQKtnY72HjbfwNmfA6RWPxVoqB
         8RPm+WVX03WiJPg5NdW3ZVMBrU3/NUoMwk3nDjHQdxHoHXv+rskfRTS7ZxsONcx/ckXk
         gQZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=G90+x+DR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s69si55100oih.3.2020.04.18.07.41.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Apr 2020 07:41:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B9D9E22245;
	Sat, 18 Apr 2020 14:41:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 17/78] scsi: iscsi: Report unbind session event when the target has been removed
Date: Sat, 18 Apr 2020 10:39:46 -0400
Message-Id: <20200418144047.9013-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418144047.9013-1-sashal@kernel.org>
References: <20200418144047.9013-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=G90+x+DR;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200418144047.9013-17-sashal%40kernel.org.
