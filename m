Return-Path: <open-iscsi+bncBC46RKEB3EGRBLWLQHVAKGQE5BRFS5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A447AC93
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Jul 2019 17:43:43 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id b124sf25011584oii.11
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jul 2019 08:43:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564501422; cv=pass;
        d=google.com; s=arc-20160816;
        b=EgCJTjHdVyyD75gjrRT1Wh+Vj2HFKaAu48nqzSa0vqujvMo3fkULVM4FJkP7KLXUXC
         X+422trqGAqAb7ILtq0rysa6rjse8jiX6dQrVBZCxt/XuLYmrGHU0QKKtTwlXd86fRsE
         xXbyP0wUxmLE/Jp7Aa/4qchLVWS6lolR/tTHGjUtq03aZEXAKBwSmOuhLGBhHHpQsqhN
         NWChikKKmCXFxvqAq11nzHTRlbFijulP0IeB4ZMQZFQtGXIeb5G0qwtJHQhX5MzMvg89
         6MCxRlVfFKoSVZ6/JZ9WXzvbZjjZTK2jdw8Oz5PW2zBYWJIDeGXWTZW7AC683SHyDsY5
         +DOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature:dkim-signature;
        bh=X3AKHaAt3pNK4MpBBVNcXiy5psDuCdVy4hqfvKh8goY=;
        b=G+f8VTiuqqRjkXjJpKlv8NHlP6drVASJvae2Uoo9f+6pleMd6azFzX6FU+0tBL4yeG
         3PILxbhjwwtc8y8glx7ELi0HwFzNiQ7r/liwRabmYS7FvKDkTdpd6Gx3vfvLRTtZmE4c
         jdrmYISpvb1bVI/8Yj9eYbzSfTEdd8ZAkeU2m0b/h+7dVBcC0KUNdXY4nI5NlZSRVOXd
         9w2LDuf+v+47Gav+/cXjqyp0U2KYR7rmQV82d9WFJqKLdJR2oRxxVfYoN4rERC23Bada
         zus0sZmi5NIFu1ZcsSe/cVw4h0eTT8+o2s60qdVvDs4vXJ+7/SoLM13zqx3r4MrvfEgH
         zuGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lw+XYkhV;
       spf=pass (google.com: domain of baijiaju1990@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X3AKHaAt3pNK4MpBBVNcXiy5psDuCdVy4hqfvKh8goY=;
        b=V3a1G5KsCH/cqg5tQzBIuwtswT0xdz/bSpf5TRO7FH/k++w8m8iXra8aKrRNSK0kG8
         a11t1LJTnN9SL46vE0SeM6z5inyTg7SCQuNdZ0/73BT5OBA7aQYibC5ROcLQDcWlQHfw
         cLjmQ7smuBx1+3jNXL2DuYxooaFUaUiVfWPdotn5mCjZmQgrUEkCtXC593k0klXi5W1Z
         AFKAEfIvb93sLBUAig5ljJQzpgpFx77jtDqU8/NMA5PJsMUMBQyBvRfYH7jKxFFXsLX1
         nC46sRgs/ffae+GMDqEJ82s8ByBfEijjw7uXgv4957il2QUrDp3eg3Kvdgsb0Mla5Y3W
         qd1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=X3AKHaAt3pNK4MpBBVNcXiy5psDuCdVy4hqfvKh8goY=;
        b=P7v4CQXUZxfC6OmwNfxVpz/Sir08KLqPEMjeUcH+kcoXnE3sE/6FwgiOFNMsu6BT/v
         j4Z0v2hxLVYwIsuB7EJeoE2JVjAwzEH01Rg007g8VeYE0fYm6a1EUNpSXjLsOaH69fHc
         qDUhlSWq/zBRqY/KQt74s9lMmkFZoSY/A36DczXiozC/16gFkUwHfAjjqbyU3Wfg1pHq
         ooItqrZjegNTPHz9eS40/xzIy3eApbQoQb/nDQbgrWAd7fgD5vv4W4kTREidYaehdFGB
         uawbzcj/nkMZNfva0rSdCk/jVQjHt/sS1bPkDUCyUaflM2bMTSb5cHxBepDSkOk5VUVV
         yfUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X3AKHaAt3pNK4MpBBVNcXiy5psDuCdVy4hqfvKh8goY=;
        b=ZCG6BloMW+w/3RTTW9mKamkYMAf2yamIpky398Vqgm6WhJGhJoiZk/phs/j9xRXNIS
         FAnP5t3+hwg0A15Nn2mACheGUR3vgOctwbQ5MN3hRL0aeBOFXly0iYIncKjj4tn3/KqO
         apuV46a82c4nw1I7/uE84syq/DNVEhWCqWpl/q2zsunRH6NX6GAMwzjCYDnQORbSKWz1
         jo8q40x4OoiC/P3tfSMKLq6RtIWOv/t/s96Q48bE8Uh3FtOgFzuD50k8WYzRd0Z7uWnh
         fKJTyglATafnfLzFXuNzWF1nUV+YeArmCTVQ9zcsMejAF436jSKz7edJWkA9kclCKctR
         nXNQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWLGmkb1M09ucfGtyx3NvjJ2GEwcpI/SVafKoNYS+Nm9CZnhUqs
	qUBjnQh/wufnmn0sYupON9k=
X-Google-Smtp-Source: APXvYqye61m+5linXej7+voKboNFVDmkGOmZcHmk17IjEMNUb0iu/rXrqufnuZsI4Hs4gO/Ic48f7Q==
X-Received: by 2002:a05:6808:3a4:: with SMTP id n4mr20919295oie.100.1564501422265;
        Tue, 30 Jul 2019 08:43:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:6ac9:: with SMTP id m9ls3495404otq.6.gmail; Tue, 30 Jul
 2019 08:43:42 -0700 (PDT)
X-Received: by 2002:a9d:6e04:: with SMTP id e4mr56025826otr.203.1564501421472;
        Tue, 30 Jul 2019 08:43:41 -0700 (PDT)
Received: by 2002:aca:cf4f:0:0:0:0:0 with SMTP id f76msoig;
        Mon, 29 Jul 2019 02:13:46 -0700 (PDT)
X-Received: by 2002:a17:90a:80c4:: with SMTP id k4mr112381135pjw.74.1564391626309;
        Mon, 29 Jul 2019 02:13:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564391626; cv=none;
        d=google.com; s=arc-20160816;
        b=GFcv7gU3ni2svOQrMFjmcXlECIlZIBsTqRpe3CM6pl22MEeeNf4N4z+OQQY3QMC3rC
         tJxtpThzZov6XoY8zbDUwMMv34nDwcBWBT0fOcbRO6rBmnOi0vs0N3NO9axp50rVivjY
         3/xQGzNKcv754Mgju6dx8txfm91mf4502sUCxJtr4bQ8zbFHG36WIRPl9R9itmMnxRwX
         pUx4UhVtAu67y6Lvb6VLJ5D2RpqrqqUDzbvhf0lqBUQdNDBXTsc9jsUJn53/eCjjXtWM
         s6i3Tlhn3OvY2a1JcJe/0d6dz6dGhFC3rvjII4+E/bd8nbeb7puLrMDw7PP49rhDuhtO
         W1ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=FGIwEmsmTeBKX3uv2HVGT5VBixZ3R6wVRQMK4paWxpY=;
        b=aonQamukvNyegq5nYEe19QBzyZLIutGIMmdgua1pEF5d7p35jxp9kfDTX3kfymbta6
         QK0Mgl/xU4MQVblMOwsVjr5QgWQATzqHr0MfM9ImC4c3g5hZ9zEyYnOYl/6x0mJFzSBn
         U8r6c+TIQ5/jKdd11dcJeDGMNu0jAaqwA5VGfbb2ohe46bn9vS0hKprxqk9yypXFshXz
         7lXAGb3YovVR1qPyRb6gzhHtZkY5JAUohyOPjR6XUvBQLUnX7zX3FxmSNeUEkxZZ7/TQ
         MJYmsd+9Mf8+mPSONgT4R9+w6QnUXR+SN3H+i6iWewh51JEFzlFLt1Qaa4E+V/WWaYHh
         eSaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lw+XYkhV;
       spf=pass (google.com: domain of baijiaju1990@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f125si2732711pgc.4.2019.07.29.02.13.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 02:13:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of baijiaju1990@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id f5so19106472pgu.5
        for <open-iscsi@googlegroups.com>; Mon, 29 Jul 2019 02:13:46 -0700 (PDT)
X-Received: by 2002:a63:494d:: with SMTP id y13mr105020405pgk.109.1564391626074;
        Mon, 29 Jul 2019 02:13:46 -0700 (PDT)
Received: from oslab.tsinghua.edu.cn ([2402:f000:4:72:808::3ca])
        by smtp.gmail.com with ESMTPSA id g2sm64643446pfi.26.2019.07.29.02.13.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 02:13:45 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com
Cc: open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jia-Ju Bai <baijiaju1990@gmail.com>
Subject: [PATCH] scsi: libiscsi: Fix possible null-pointer dereferences in iscsi_conn_get_addr_param()
Date: Mon, 29 Jul 2019 17:13:39 +0800
Message-Id: <20190729091339.30815-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.0
X-Original-Sender: baijiaju1990@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lw+XYkhV;       spf=pass
 (google.com: domain of baijiaju1990@gmail.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

In iscsi_conn_get_addr_param(), sin6 may be NULL when reaching lines
3479 and 3487:
    len = sprintf(buf, "%pI6\n", &sin6->sin6_addr);
    len = sprintf(buf, "%hu\n", be16_to_cpu(sin6->sin6_port));

Thus, possible null-pointer dereferences may occur.

To fix these bugs, sin6 is checked before being used, and len is
initialized to -EINVAL.

These bugs are found by a static analysis tool STCheck written by us.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 drivers/scsi/libiscsi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index ebd47c0cf9e9..58f072d5c43f 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3457,7 +3457,7 @@ int iscsi_conn_get_addr_param(struct sockaddr_storage *addr,
 {
 	struct sockaddr_in6 *sin6 = NULL;
 	struct sockaddr_in *sin = NULL;
-	int len;
+	int len = -EINVAL;
 
 	switch (addr->ss_family) {
 	case AF_INET:
@@ -3475,14 +3475,14 @@ int iscsi_conn_get_addr_param(struct sockaddr_storage *addr,
 	case ISCSI_HOST_PARAM_IPADDRESS:
 		if (sin)
 			len = sprintf(buf, "%pI4\n", &sin->sin_addr.s_addr);
-		else
+		else if (sin6)
 			len = sprintf(buf, "%pI6\n", &sin6->sin6_addr);
 		break;
 	case ISCSI_PARAM_CONN_PORT:
 	case ISCSI_PARAM_LOCAL_PORT:
 		if (sin)
 			len = sprintf(buf, "%hu\n", be16_to_cpu(sin->sin_port));
-		else
+		else if (sin6)
 			len = sprintf(buf, "%hu\n",
 				      be16_to_cpu(sin6->sin6_port));
 		break;
-- 
2.17.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20190729091339.30815-1-baijiaju1990%40gmail.com.
