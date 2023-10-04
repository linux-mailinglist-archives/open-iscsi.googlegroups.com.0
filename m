Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBHOW62UAMGQECKMU6PI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 191637B881C
	for <lists+open-iscsi@lfdr.de>; Wed,  4 Oct 2023 20:12:49 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id 5b1f17b1804b1-402cd372b8bsf607215e9.2
        for <lists+open-iscsi@lfdr.de>; Wed, 04 Oct 2023 11:12:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696443168; cv=pass;
        d=google.com; s=arc-20160816;
        b=pHlZlKgOVpxYrdpDMwOnWs79UtFvjex8jy9P13EgbJwcZhooSkw+Ukv/oWukPW4mga
         BwsefD/cn+vRaKNqs7jC1jQe0TYSYKOdNwl7KvI5Y1i09Mh97gDkWzfhhaCv4vLSiinv
         6h+y2EskXs8UZ+KxRbwoKxPpKZOU2CmAlBXZyNIB/bRDHRRR4HZvKcHS2qeFuAXTg7Xl
         7QPGoW5PElKpnfqz11lWaBf6+C5yb5xOe/50hEpcNiVRk7o0AOAboTf7525XTtOYQO/U
         ztcEOqxWwT1+74zcgrR2YrKNt3GJfEjCkJYbodKWNWEGy13BUHP96CDgHKXG5E/Go7dK
         J8Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Wlgy5eZyx8F7XubqSVKhV5MFD6V5NG2yW8IOuCHTz54=;
        fh=bC5Pm5AidGJpV8OaBa10vI/SZxEoZ0aNW+CZAH6oMDA=;
        b=pKAVTcg4cItPXCCxPu9UUgwBe4YgUEYcPg4KpeK+leLhFZmewukorJ8+S9MuS4hsyf
         mi+iHqC0Ob2s0AqoMp+kfQw2V6FzqqzspRZCdFEoNS4uD6GUcduvxz84WbXTY8k69Hox
         y7sjnAE3aE//S9mCg1sBYgLgZ0ZotvfjvO7+32gLwvLqDkUD8NNHBVAmwcgSeUlw2fF+
         861IfcvGg/v6vDuG1Nnc7M0PNphkElYZ9HUXAZo4EegjYHqwMvqEH8HdpZbFs/9/aWrV
         m0oeigOszAUKCUDBjAwTgp42BJEz3ZAw+2nejfHs2r2PJbMFhwofsv6SHB4Bgvvljwcu
         sxFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=lBxF066f;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1696443168; x=1697047968; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Wlgy5eZyx8F7XubqSVKhV5MFD6V5NG2yW8IOuCHTz54=;
        b=eAEWNWTrTAgIQNb++h+uFcbBU+ymid5BarVPOEEw9oGfqlnhEd5dLLdgQAdTQOat67
         oVD8VKcQ1N2A4POrN7DwAM3YNw5Cw6QlgiLnsVS8L621pco3lJp1AS/8qjJrM5o7SnPt
         ELMKtcfWq+VcMRE194pHNaN4EfcVK6d/8Uq9QNTQ7fv6xObY924n8nJELI6jin3+r/yW
         WIrkAWiR007fQMpDp3Ja41SAqfUpMI1LBQfusZXydRpGdKyN2sH4r35jZ1Hyn4JT/va+
         xtsMyjKgpc3CbunmutQqQwQB0+oEfY7qXCNbFrqAc9clXbtPWuT+vzWfUgDEo7ILuQ/o
         I+DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696443168; x=1697047968;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:message-id:date:subject:cc:to
         :from:x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wlgy5eZyx8F7XubqSVKhV5MFD6V5NG2yW8IOuCHTz54=;
        b=fJVck0UbfClApHwQ9oGUu6xsCQUt51Q8VYcEtrwazIlCi7JbfJKf88Klj+xsi2UdKT
         POuWdhv+/NpYMt1k8jax7ky0bCpXcLoMpAy9aoyCk9EVSEBV+rwfxR/oRjbY7KzsWXba
         rmahbY2kYn+FY5W26Fszzyo7M6dVv3sgk8mM1qhjQ3P7aomwddlN2RgV9l/DrxNkJwfF
         OQUJoj2qttz7StxcJ1odQF6DhzJC+4uVXV4lkJLA693bIwZHjGstMJcZ8KWdUW/+f6WV
         HccE3Ub94Wsv417Z13zSiT8Z/Df57p9HDOFxXuttgXLt25l+UEqVJU9cpZoB6K2ljz8M
         hlJA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YzGsbzXFQtc0LhUmsNiwjiQ18fbVEdqDzurSUTnuii0dkCsYAy+
	8bzaf0yrhZONqtv3nzK21q8=
X-Google-Smtp-Source: AGHT+IFNrdBuf+Kr9hO67BhtMj4Ib2evUEzn8U/NR+k8JTJ/peP3NvGvP6LbBDUMzPGrUltsvYcZSQ==
X-Received: by 2002:a1c:f709:0:b0:3fe:1cac:37d5 with SMTP id v9-20020a1cf709000000b003fe1cac37d5mr3274561wmh.4.1696443168019;
        Wed, 04 Oct 2023 11:12:48 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:511f:b0:405:32c1:16f9 with SMTP id
 o31-20020a05600c511f00b0040532c116f9ls48405wms.1.-pod-prod-02-eu; Wed, 04 Oct
 2023 11:12:44 -0700 (PDT)
X-Received: by 2002:a05:600c:3652:b0:3fb:a0fc:1ba1 with SMTP id y18-20020a05600c365200b003fba0fc1ba1mr3092163wmq.35.1696443164404;
        Wed, 04 Oct 2023 11:12:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696443164; cv=none;
        d=google.com; s=arc-20160816;
        b=cEvPsGbAYFA64GYhvQKcH2WX07H4K1F2Pz6Fswc2ybN4JN5rqxoy7+sFu/nXpCNpxy
         PMpaCKcPN4fWPg5CtaH38ZJ/94z0CfToy7D3sqF7Dl/Ypckt9tut7LzcDmbq2u7OWOQx
         p9rIBJVYv5FugE6zsd+Wyf2+wIoz1Z2Znwnoa2C7jbBoYTO+UOjY0SeH5Jz8xAXVFk8D
         uYH9fjKBnZK+W+VkF+me85kH8nqE//2LlP60CKeHR/zMHHhPUq9bzRXuk1WOOH28GXoi
         YyUJRUUrtsQ+xBk/ixjc/NQVSGDYnoZLKSO36draTlmrZf/rO6JHtNJmOTq6QWwzImaW
         VQug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=qlgw447X5SLWnqO1MQzFmculNAwR6LYKKEaMwO7/m4Q=;
        fh=bC5Pm5AidGJpV8OaBa10vI/SZxEoZ0aNW+CZAH6oMDA=;
        b=P9eTJwLa1aMyDZqK7l2eZnBUllqnjlX76Kd7yPZqj7Q939ZrgYeHMUsq/+7mu/UVNb
         h0SuTkSWq1Xft4ve4cgD78ZScPPPDD1T2OHTfJSMrUymZ8xkzrcNiSpJrn9qG59bocdo
         oHAO1MBA2pg7PE8x077AzJZxwvVcmPU+Uzb9/C20vyHJdwjwx93J+SxcLhcAVTi+RngV
         cU+KjJlysF2sMcKgjOzvxV3xgT7OuWS4Kl52b/jFCP7vmD2IYUcLFXukqZRAAyzUIUqG
         txPKEEqmI4gi9BCaWBTsGjZpyGCJyw6BchCSvEtzhwZ5rMWWnI8EBTziOJdF7yYueevX
         PsxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=lBxF066f;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id fm18-20020a05600c0c1200b00405c7dd428csi143588wmb.2.2023.10.04.11.12.44
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 11:12:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 2479BB81FF4;
	Wed,  4 Oct 2023 18:12:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3CD5C433C7;
	Wed,  4 Oct 2023 18:12:42 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	patches@lists.linux.dev,
	Eric Dumazet <edumazet@google.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 6.1 058/259] scsi: iscsi_tcp: restrict to TCP sockets
Date: Wed,  4 Oct 2023 19:53:51 +0200
Message-ID: <20231004175220.090852970@linuxfoundation.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231004175217.404851126@linuxfoundation.org>
References: <20231004175217.404851126@linuxfoundation.org>
User-Agent: quilt/0.67
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=lBxF066f;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

6.1-stable review patch.  If anyone has any objections, please let me know.

------------------

From: Eric Dumazet <edumazet@google.com>

[ Upstream commit f4f82c52a0ead5ab363d207d06f81b967d09ffb8 ]

Nothing prevents iscsi_sw_tcp_conn_bind() to receive file descriptor
pointing to non TCP socket (af_unix for example).

Return -EINVAL if this is attempted, instead of crashing the kernel.

Fixes: 7ba247138907 ("[SCSI] open-iscsi/linux-iscsi-5 Initiator: Initiator code")
Signed-off-by: Eric Dumazet <edumazet@google.com>
Cc: Lee Duncan <lduncan@suse.com>
Cc: Chris Leech <cleech@redhat.com>
Cc: Mike Christie <michael.christie@oracle.com>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: open-iscsi@googlegroups.com
Cc: linux-scsi@vger.kernel.org
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/iscsi_tcp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 8009eab3b7bee..56ade46309707 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -724,6 +724,10 @@ iscsi_sw_tcp_conn_bind(struct iscsi_cls_session *cls_session,
 		return -EEXIST;
 	}
 
+	err = -EINVAL;
+	if (!sk_is_tcp(sock->sk))
+		goto free_socket;
+
 	err = iscsi_conn_bind(cls_session, cls_conn, is_leading);
 	if (err)
 		goto free_socket;
-- 
2.40.1



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20231004175220.090852970%40linuxfoundation.org.
