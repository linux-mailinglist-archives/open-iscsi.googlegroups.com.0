Return-Path: <open-iscsi+bncBAABB4N4Y76AKGQEI467RWQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D641296567
	for <lists+open-iscsi@lfdr.de>; Thu, 22 Oct 2020 21:33:06 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id u4sf1676074qvk.3
        for <lists+open-iscsi@lfdr.de>; Thu, 22 Oct 2020 12:33:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603395185; cv=pass;
        d=google.com; s=arc-20160816;
        b=hBbv56PwWw5nOJH5T++sA/gahq9enBoHqpWDCTakAsbzNw8/p5V30E3jvDvnBHV7Hl
         z0sCl9O5Qh/7uONwc1cVdHynT1JYJs7q2a+HPR9MfapqFei1xr1zHQ+c7b7ClGFKVa5h
         DazP3xRlffvFWaxKUeAV3eGf7pwiAqiYc3gdm9kXzHG2oWDPWyuwa5cgFIgvHiCcnsPf
         mtxEbIT6GreYBD87QfyvrXyRICg7KwqoG+VU4BbDrJkCU7yi6Kl/k7qCkxFU09INcood
         Yw9hCB3bponqSf2e0zpJzMMBwQNMrAs1CjFyw3KC5uVenUOiWl6KrJAJAPs6URNg0YR9
         qZvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:to:from:sender:dkim-signature;
        bh=0LFxOeOzT+oga0TsS9NCWnpeOP8K72ep19EKmhA4ky8=;
        b=tApwIKR4fVoXhmXSEnqO2VVt2sStAdpwInr2jdYxvxGASv7H7UDgtfdRsCTjn/u9q6
         EtaKdLlbuhRqIY70iYTrBie+S5jjJ/O2kMB84zAHk6Rz1RhEkYki8vNl3LaP/SYPDgDw
         YTrlH2F9AgmPheypcvomOnRxuznW8VMwcTPBgFHiPlGj9MYTySwusYxqEGcvgUTVZ7QV
         E5fvWAk1QTxaWu8iyWSa6AdDlst+xPE6bMtNfJEhOK++OwDsfQWz58BcR7+b0NLGbeKt
         sCHJ/extct31J8gKx+A3UenroWdGlJ4Ml/pAU5m/Mw3kFvcqwvwHUIT1cSPul2LgZaIe
         tgjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=f5GhWlx6;
       spf=pass (google.com: domain of ailiop@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=ailiop@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0LFxOeOzT+oga0TsS9NCWnpeOP8K72ep19EKmhA4ky8=;
        b=XzP9jDmFP6acuyVzubPaODPO8jhkOrG5u+3pJBp6EPT0GCcCXes94ONE2xu/WOANrI
         kquaxtkQEa/AnYMogCtncxtvlQCyMAP0N3XQ/Jrsd9Uo17ZiGbxUHCSz7azVtiyKMzoU
         6qGVMGucnRK6O6CYVlmx+GfY7CSsdBLo1h9YIDtUHIGX4balqXtCgXOPYiDNz7FsXERH
         WmSXnDFpru25FGlmmHTl0apf76RoQ71txLkxnuCbG5B5KeJ9EF8O7J7DiatTkRTz6EfG
         /Ea4bsCaerdWnKCAS4ug+xTHlfLqH+6W6I2B3tVoTCXT0qDUaO9FcfY7H5tlYyqrBLUF
         zgHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0LFxOeOzT+oga0TsS9NCWnpeOP8K72ep19EKmhA4ky8=;
        b=uUWsKyw6S7AF30rVFSTfBEb2y329RRodFopEzv/OWtkf+n2Rm3JMvNVrmcWAEcAUjP
         40RhYkgERI5jj6MGXNN19ardduWiCNMDbIHWiVsPE2DEUFYZfr/a62cPElKejSxYhzII
         N8L8W1PPkJeExHs/1YuKpFVe6mq8ZM54G9GEUbVT/8UFsQNCK0qcvpVHoGt1PXLqtA07
         tyG3IYPAiGxH9G5AxkhN99lLGLaAxMdxlkd3TkzuBm1VYFBPAP1fXEpgtsOl5xP5T8Bz
         2L/YOlYnLArzXizUEQHaJNx40IxeQg/Cw3MKiQCUTdA4iNIG374MYcedwIAxdq4+pgHl
         ZVsA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533T5qTpmPveA73B5peq8QXQzsUqn9JIfuZaeQY/fXaXDjuk1esm
	4fKryEwIrWEB9pjJH+lH/P8=
X-Google-Smtp-Source: ABdhPJy37I4/SPrDyvdJ87TxFdDznPvg/lBtBSBvLfbAnLlvOM/jHfhJk5iYxY1ThthLU0jm/1oJCw==
X-Received: by 2002:a05:620a:70c:: with SMTP id 12mr3095414qkc.153.1603395185719;
        Thu, 22 Oct 2020 12:33:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:10f:: with SMTP id u15ls943960qtw.10.gmail; Thu, 22
 Oct 2020 12:33:05 -0700 (PDT)
X-Received: by 2002:ac8:5158:: with SMTP id h24mr3478915qtn.154.1603395185275;
        Thu, 22 Oct 2020 12:33:05 -0700 (PDT)
Received: by 2002:a37:b2c1:0:b029:12b:28f0:4e2b with SMTP id b184-20020a37b2c10000b029012b28f04e2bmsqkf;
        Tue, 20 Oct 2020 03:56:49 -0700 (PDT)
X-Received: by 2002:adf:f3c7:: with SMTP id g7mr3047327wrp.394.1603191408849;
        Tue, 20 Oct 2020 03:56:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603191408; cv=none;
        d=google.com; s=arc-20160816;
        b=eaeaecX8UEH5MYC96WzIMMIiOCBxFMGgOdID6OesmDp49GvdGY1GzL/befV0F7Mwqq
         G5zxiWFiGCRXHC77HRfN95oQgfNYp4Sp+i5AUrT7/cdCj1uk3zwzbuUsUiN4SJ1t0MBT
         tTL06sokluQLUZCA69T9fbfNq8a/kfqiaez3A5COrj+5frbM04js8HWf0qd4U2Up/Lat
         6NHKYR+6asaJuDsx4GO5ykcbpdhu6wumESM7+Dk1HpcIr8YjWu5LnH19sfRLW8bucuM2
         TfhXQUT1AUGF+pPny9w/+VzBvOCzgAXcidaMufSrvOyRzJeYn6HuRM17h7Jto8q4T50F
         psJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=6C0tGs1oirkt3RDHBpLaRyUbeerNa+aFVDpgjdIDTIo=;
        b=Ip8y9a0LvG8sVTcLRVfmw1397hT/OUk/BVcOlCLBpMEBbJInePsfEx4bNc1UmlZOWT
         QgYEWlvnNq7JTTFWh+9pTPVXVi1SZw4py+8zJOK7bEDMyD2ZmWXBqp4rGL/2yBsp/Ttf
         NmEJ1BvELo7xe/302VAQqfS6qi9F8Z0WwDhkLyoMGIVQyTtrzXnxe+b3VBnhkdjDK0W8
         CTqJr8wlkhiJSli9TPYuuSIOOFe+BO0WgxLHmlc+cEGnqu9WGfi/wIi9aT4aaBX0TZ+4
         lOHfH0mNSB0vSiqUL9DgaVoNNbT7gozoMmzb2Z0ii9jYIWRggwVLDjpa8n/I6o6lbFDL
         eGZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=f5GhWlx6;
       spf=pass (google.com: domain of ailiop@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=ailiop@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f198si50322wme.2.2020.10.20.03.56.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 03:56:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ailiop@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 745D8B179
	for <open-iscsi@googlegroups.com>; Tue, 20 Oct 2020 10:56:48 +0000 (UTC)
From: Anthony Iliopoulos <ailiop@suse.com>
To: open-iscsi@googlegroups.com
Subject: [PATCH] iscsid: drop uid privileges after locking memory
Date: Tue, 20 Oct 2020 12:57:22 +0200
Message-Id: <20201020105722.8938-1-ailiop@suse.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
X-Original-Sender: ailiop@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=f5GhWlx6;       spf=pass
 (google.com: domain of ailiop@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=ailiop@suse.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=suse.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Move the setuid call after mlockall, since the latter requires elevated
privileges, and will cause iscsid startup to fail when an unprivileged
uid is specified.

Signed-off-by: Anthony Iliopoulos <ailiop@suse.com>
---
 usr/iscsid.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/usr/iscsid.c b/usr/iscsid.c
index e50149823bee..9f1a09fe28f2 100644
--- a/usr/iscsid.c
+++ b/usr/iscsid.c
@@ -525,12 +525,6 @@ int main(int argc, char *argv[])
 		}
 	}
 
-	if (uid && setuid(uid) < 0) {
-		log_error("Unable to setuid to %d", uid);
-		log_close(log_pid);
-		exit(ISCSI_ERR);
-	}
-
 	memset(&daemon_config, 0, sizeof (daemon_config));
 	daemon_config.pid_file = pid_file;
 	daemon_config.config_file = config_file;
@@ -601,6 +595,12 @@ int main(int argc, char *argv[])
 		exit(ISCSI_ERR);
 	}
 
+	if (uid && setuid(uid) < 0) {
+		log_error("Unable to setuid to %d", uid);
+		log_close(log_pid);
+		exit(ISCSI_ERR);
+	}
+
 	set_state_to_ready();
 	event_loop(ipc, control_fd, mgmt_ipc_fd);
 
-- 
2.29.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201020105722.8938-1-ailiop%40suse.com.
