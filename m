Return-Path: <open-iscsi+bncBDTZTRGMXIFBBYVD5T2AKGQEA65OREQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA051AEF05
	for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 16:42:43 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id v8sf975338otj.5
        for <lists+open-iscsi@lfdr.de>; Sat, 18 Apr 2020 07:42:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587220962; cv=pass;
        d=google.com; s=arc-20160816;
        b=xHJVY9bgjtLXR9HWUb7mEtQG0qzFJXqTpYDvXa18mZBPnGnwXIwLIWhKw+K99yFQ6w
         C7zLxWTptjouwlGZhyeJY2lH91aUk4pboYRFSNPDTzRshDNjxdUB+lkmhVQoxff4e5t2
         mamM7lVQhvB1Dj6bK8nTsApBAuS1ppirndpj9pSVMY3frtKOvTRgQBQOOA4d5KmfQJNo
         DlHZ382WvsEJ8y0OUrIewFo29aLzBVn+lSoq033zK+Oot+8Cc68shWLhwkLW1/tVsCrU
         swF/1Qo3fmuF6mAxJHOQU14vGg7CIGa0EmCnoNmBV2y1gn96Pl4T1aBZZ2lsWOo40yUp
         yO1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Z+YHIh6vnfVWBaoez+xa7ZqgGJlnSDoGXhKnk+DT7c8=;
        b=JFW97LNdZXUwDhN+XSpkyeJmJOH4N8oWmyO+jqII+ApmDMWo5sCmKqYSu8azCxa2C7
         d1dolahSK7oDc5blVFxfDp4ffHZpg/uz9wIJ9FN1sGg71FwzgpFljA65zNg/+ggM3stH
         yiakCnN59CE71LOWqVhrqQ/yDJBZ2mDYQTKzu0Tu4QQJWZeJQfBm8dUQn8NKabSwUOBU
         UCjmoK0AZgigwykLIoaAnj7JTqD5VeD6d2CD/qmhHqQbKrVyPx7NPBwxMtzVAaaow/Sq
         ehyVd92K0y2f5omS5PhksY0lTopQwGRXuu7K/kRujL7GNzNWnkZz0/JR77OD91EJuvV3
         pGTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GXTYdjFw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z+YHIh6vnfVWBaoez+xa7ZqgGJlnSDoGXhKnk+DT7c8=;
        b=aQhM+i0ZZPR9tqG+dGthAn6GTpW4KW4DcE43bJflnou8K89fNGVngUeGAEAmvs5BDP
         a4hmkhu0bTlwBKmzsBPShnPlLFkZ1s5cP+f7BVtAC1yLNuBDx8deiSfpmqOdxtbkx1E/
         ilHqu0kstSWENdC/GifcjEqOIW5R+XI2oq2I/OZL3EbVq5W3EarDxY6FJYZJhEHeUzbw
         coePhnP7e/bUnRFN7Ur8W4LwO5GfJJQHpE9T/jd70dbltFyR6pjS5e8IttGKXgzBUXWg
         L21kjqMj4q8lQwPDvViuMYwSqCUbtKSjBMu3aKmn9QpVQIEGsLTjWxIvkNe3IG2stbme
         7xOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z+YHIh6vnfVWBaoez+xa7ZqgGJlnSDoGXhKnk+DT7c8=;
        b=lwQ9/93177hU7D76KQeaPL8VkVOUHneY4rjSE5XV/+LiUVD2vn3IiexEUyMqUrJChu
         HXcKqbzwG/bFSIl+ugr5TRryyynpqMrys99qMSXYfyFOeG4sXN9HVgzfxuBqatVKWt+Z
         zNYF8HCr+rb9yeNzPYnUmSWbj0emDGowA9Cs+l8bWXHqqRLAMC4oIKRK8f92k3nocjh4
         YD+go+ooQozpPdPjAWi9Euapu1UdoWXwL+fntmRJSULcqyHlinMIw0U6t8wv+5xxfqdb
         KNbz5QDbyoOLyTzitkB1VdNOGtUhCtq3X0D60dujPK/kK/6VJlOb1WlT4xKRwlugm0PH
         QdPw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuZyowHSohaITTMSuCd+pUST5Cw/B6Z5E0iQCMWCT+VvVyUv+Qyy
	3qgv6Sa9+P++1T9wePzJXT4=
X-Google-Smtp-Source: APiQypIxbBb6UijBf+jjD9Wau1ZVQt3zkr9rSaWuZHBCg46BNV5SAr3DyDWpBhwhAZo3zYe+HZQdSg==
X-Received: by 2002:aca:c0c3:: with SMTP id q186mr5732890oif.174.1587220962125;
        Sat, 18 Apr 2020 07:42:42 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls1231465ots.0.gmail; Sat, 18
 Apr 2020 07:42:41 -0700 (PDT)
X-Received: by 2002:a9d:3b8:: with SMTP id f53mr3158047otf.37.1587220961830;
        Sat, 18 Apr 2020 07:42:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587220961; cv=none;
        d=google.com; s=arc-20160816;
        b=P8nUr9xsVnXCankEbv5EkFykN2grAMaEHMyWIoqerTZaO5XixmT4cvUlDgjEDJCCEQ
         6tYNhymlQqzePlQD83S19pGnhSzeyEwJh1Q+ftFBmERydLqa9EKKR5R8uaVQkpfAODdY
         qf2zsGUcNHBQFoZwYZX9lyEn5D5/JLdsKrHBEJ19uVBBsaTCbCTA4RBMytMo+1TZHWOY
         vdDplEydnhNenkF9wKqF20mMBQQ2cQ6BELcGP2Lwq7ou4JDCbdvD9hFpvsWw8gQJEEUn
         LEFxZBzr8QXR5Ehvw5fsamgTjGDCChjjBZGIV1PVu6/Xb1QzPWN67TrrytwZqbjIQcEt
         1vzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vLPJmvPeJ+fGm6V7N2ZmKwvGCmN+aVyQb9WEuxTUG+M=;
        b=BTnf64THfKqGkTRseqNxSKenGaYoBc34eUJurRwU0MjB61sjHSv4f1fySJX6D59c1K
         AmxmqjBw+sWyDCDqUaYTc8fsC6cWPKotZOLnx25Y1AU2SFXBgf3rJlwtuhGl7MahBOVo
         uMSMPkL52DwwBczaXSN8IF1Hf2/MDbWshuGabMyPdPAO1IDco5NQWhrzhfUZj4gO+yyP
         v/Z1D3XHCyVNs8tJpOrjZy2R9Ss7TrjZ6M+3XijM7N65tbjM93f8TOGAI0ykTanwNMab
         BF/G2oEBESstHukoT1TUZvBRQh/qlqMy6UUTWNH98QKb+ZEXBVWXLwBK8BegPoP3AMbt
         DvVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GXTYdjFw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o6si725603otk.5.2020.04.18.07.42.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Apr 2020 07:42:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 39B4922262;
	Sat, 18 Apr 2020 14:42:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 11/47] scsi: iscsi: Report unbind session event when the target has been removed
Date: Sat, 18 Apr 2020 10:41:51 -0400
Message-Id: <20200418144227.9802-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418144227.9802-1-sashal@kernel.org>
References: <20200418144227.9802-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GXTYdjFw;       spf=pass
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
index c0fb9e7890807..04d095488c764 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2010,7 +2010,7 @@ static void __iscsi_unbind_session(struct work_struct *work)
 	if (session->target_id == ISCSI_MAX_TARGET) {
 		spin_unlock_irqrestore(&session->lock, flags);
 		mutex_unlock(&ihost->mutex);
-		return;
+		goto unbind_session_exit;
 	}
 
 	target_id = session->target_id;
@@ -2022,6 +2022,8 @@ static void __iscsi_unbind_session(struct work_struct *work)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200418144227.9802-11-sashal%40kernel.org.
