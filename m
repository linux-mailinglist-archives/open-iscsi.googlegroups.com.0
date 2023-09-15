Return-Path: <open-iscsi+bncBDN3ZEGJT4NBBCNBSKUAMGQEETY4JKY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDB47A245D
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Sep 2023 19:12:44 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id 46e09a7af769-6c20f3269e4sf3202319a34.2
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Sep 2023 10:12:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1694797963; cv=pass;
        d=google.com; s=arc-20160816;
        b=XNmFHX+B1MkMNF2xNEQsuCOt0fkze6+cd4eOZo5HFEGUHPp/p3GyGVe/fq00UxmOvo
         j5wmGMkndkpTgVDC/aQCUbAVzzCggx1mOv8uLbaU9NW+SdtlgFY6FJqsmpR0lithVdWg
         kWxKqBKE3q4awJ9hrjqT6OwS9OCOmokoYS9Yrz8pilNbnICDkR5P4NWk+slxPi1PintG
         sFAtkKgI2R/C9ZMgKUFudHUKqZ0KwHa8Ip2Pwy/LErp2lYxPzLSIbDZhHDK+D/IMoI60
         mhObX+db3tC7Vjyhqu5WLhfT+G9/Hvprd9GPozrWjt9z3LBTvWb8VzPr47RV/cZMHyPV
         SsPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :message-id:mime-version:date:dkim-signature;
        bh=lTaTGP0yTYZB+R2M+J+gzL/4GHfoSv3wa6ZkvT1LR1w=;
        fh=mC1xPb9pA9fkPw7yIP8Af0r6rIXWuZ/YUJAoR4tDsf0=;
        b=VdzSmUv8+k8XR0d6muxKz+PZXlpPvpHhx50EuqaYriOj8Rg4pajBKsIaZAM11oiQ1q
         +RIh3kU6nI0LDJIu1p6UIFCedV3+8WWg+wsIx8MYRtmTThctJwWgzqq6zj1NqAr4L849
         +C8TC9t/9VOPcZRYndfxhg9Zzi6SAAzvWD41jaG9BUXahf8Bj8lUbJRJeqyvd/rB4Wpi
         /wPdyzUphY3kwm7goAqZ8Uw7yBOzFok3oFvuZ9TjqpGKGqnmc06XFhSObhw1hrfpGuOe
         xqjufbtvelgMkxZP0U2No1rz9Kg13K51veWmnk5zdSS2etS2poBuIx5VuURNgpUYUlwm
         R97Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20230601 header.b=DCK5ooTx;
       spf=pass (google.com: domain of 3mpaezqgkcpm10h9xm1g3bb381.zb9bc1a-5fzf53bb3813ebhcf.zb9@flex--edumazet.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3MpAEZQgKCpM10H9xM1G3BB381.zB9BC1A-5FzF53BB3813EBHCF.zB9@flex--edumazet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1694797962; x=1695402762; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:from
         :subject:message-id:mime-version:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lTaTGP0yTYZB+R2M+J+gzL/4GHfoSv3wa6ZkvT1LR1w=;
        b=Rh+u1bMZF7NY/hdUCasPOn7c0iF6PaoLqR/AH9U6laWjrF9/XIxf4hSNm0tt9BS/lm
         vUpP0QLcWrSxQie1nJhc9uGwt+vADnAuF3wkSg+hxvjhP1gp/LfpBBm0VMsYjLrneEll
         fcobPg37dnGyO4y1uzQH9jyr1Pzpqamvdnr17U2Ma8Co+tnEt0wyxfPOcwHAedOG4Teh
         1VzJz0QY9KWMLueOy4XuZu4OtFS5ThQZIXllkMyOCZPBhvBXZ+4yK/GXgizV8QMx6FTv
         aUNDHqqetjcyCcnOehW0cwG4L5keNqnl2VJ5tsPY0Mi7XOcTmiaqbV1l7IuAuCewq6Z7
         gt4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694797962; x=1695402762;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:from
         :subject:message-id:mime-version:date:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lTaTGP0yTYZB+R2M+J+gzL/4GHfoSv3wa6ZkvT1LR1w=;
        b=RfIQdZvjaZgvUxWUW0GeXloDlbTQyRRW1OpBupuHZJKD8zw4+TtEZK8Myhbj5mnSlX
         xTRgbcYbAp+GTiVVoevwrEqAmhJZhZ60oXiNzSqq3klCA3OZ7mdTuw2VJxnmUF6Zo889
         r+r9j7SwhtN4GOcmi+sGWO09WosVmEhBfGBP29xObHm2KMvtE5OOzv3sY6LPGCewJKCl
         O+++TBaNQivk1MQek5MSj/er9L4MdpUN7sYp4EYJoSVEOQqz3bmglPdprmnpaaKz4gxt
         HB1ETh2yILNa0Eh3rvdVMGUhB2PqeQxUh5u/xLBPy8b4oqFzs5Pp5HTtZDf2/jelJK9M
         S/YQ==
X-Gm-Message-State: AOJu0Yzo9IQFeL14hXIMJPHDsKjHzNhzcTzKBMT4+nuCW57D8UohjCON
	TFybVBADnolTFZNd0VVmPZI=
X-Google-Smtp-Source: AGHT+IEhytcfmAuK8UW/S5svm4BhtrpWw7j5jKSW27EjXBo3kOTwdBwZqUI98xKIIpI73OSsJYUe/A==
X-Received: by 2002:a9d:674f:0:b0:6bc:65ad:1b08 with SMTP id w15-20020a9d674f000000b006bc65ad1b08mr2191457otm.28.1694797962745;
        Fri, 15 Sep 2023 10:12:42 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:b00d:0:b0:571:14d9:27da with SMTP id f13-20020a4ab00d000000b0057114d927dals2195180oon.2.-pod-prod-03-us;
 Fri, 15 Sep 2023 10:12:41 -0700 (PDT)
X-Received: by 2002:a4a:98cc:0:b0:56c:95bc:fe6 with SMTP id b12-20020a4a98cc000000b0056c95bc0fe6mr747860ooj.0.1694797960999;
        Fri, 15 Sep 2023 10:12:40 -0700 (PDT)
Received: by 2002:a05:6808:8d8:b0:3a8:7c7d:6d23 with SMTP id 5614622812f47-3acff6657damsb6e;
        Fri, 15 Sep 2023 10:11:15 -0700 (PDT)
X-Received: by 2002:aca:1c03:0:b0:3a7:6213:6899 with SMTP id c3-20020aca1c03000000b003a762136899mr2551533oic.24.1694797874926;
        Fri, 15 Sep 2023 10:11:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1694797874; cv=none;
        d=google.com; s=arc-20160816;
        b=XLfjC4GbPizyZgKA2SpTVLimdtTDT+/F+ykOHpK2EUNpXFl2sAMiLJ2J8NlvAUsIN4
         9ncbuPrzb9k4qEJ6n/POlX6zLnnNBc0NB8CDn/EQinghHefQrfNEs/9n21PqOoej+raV
         Y/+Y3QvdO/irKJFreYcLXnlypI4mMZGvulfBB7gBW+OCmDS0Kua6eWIaCZl2NA0WbjtW
         9TcydcpyneBpZ/YKcBV1j3flFQHxLCoZ14uowN7+DC1CtOba2O73pThrtuuUbX26Ikh4
         r3TwtD7PLyAamWHeqXLpnCMiM85QrC3khjGG5RsopPl/Ops4bq1UoxVjf7rnCU+9RznC
         4K3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:message-id:mime-version:date:dkim-signature;
        bh=bOqFz4mwu4R8vVhIHYO47D/MyrIS2uBdDRxhIpCvwuY=;
        fh=mC1xPb9pA9fkPw7yIP8Af0r6rIXWuZ/YUJAoR4tDsf0=;
        b=lZEntbFFx/kpHUdwIgsj5ZKujQHB9Vk534XiYZf667Rf2bDTnUeqAmxSvLDatBFAR2
         TL5cY7/MVGvoTsjZpBvW0T6yVQHDyWrL/IcJ1d0qfiXn7o62EECObavgmeRPuhEG6qxY
         5L1CWVEVlnH9bLb6JUEQEpXYc7gZrwzhXocQ2FjtxnVLARVn02TVx710z5xjIOKllVgx
         Zd/J6HaTk0/qOuaL8n5nB7i7v7q3ypmgydX98WZAe6Hm+Ss5W0DI62dkXexQ7NEjRsgT
         W8WH91ibdWDgGi/icu11sJXpxjQRZ/+7/0s+AcI+KdPpqEHxjdLiKQFtfryWTMSoetFg
         xAXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20230601 header.b=DCK5ooTx;
       spf=pass (google.com: domain of 3mpaezqgkcpm10h9xm1g3bb381.zb9bc1a-5fzf53bb3813ebhcf.zb9@flex--edumazet.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3MpAEZQgKCpM10H9xM1G3BB381.zB9BC1A-5FzF53BB3813EBHCF.zB9@flex--edumazet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id gs13-20020a0568083c8d00b003acac725b27si547322oib.3.2023.09.15.10.11.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 10:11:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mpaezqgkcpm10h9xm1g3bb381.zb9bc1a-5fzf53bb3813ebhcf.zb9@flex--edumazet.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 3f1490d57ef6-d8027f9dfefso2852074276.0
        for <open-iscsi@googlegroups.com>; Fri, 15 Sep 2023 10:11:14 -0700 (PDT)
X-Received: from edumazet1.c.googlers.com ([fda3:e722:ac3:cc00:2b:7d90:c0a8:395a])
 (user=edumazet job=sendgmr) by 2002:a05:6902:118a:b0:d80:183c:92b9 with SMTP
 id m10-20020a056902118a00b00d80183c92b9mr60345ybu.4.1694797874299; Fri, 15
 Sep 2023 10:11:14 -0700 (PDT)
Date: Fri, 15 Sep 2023 17:11:11 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Message-ID: <20230915171111.4057930-1-edumazet@google.com>
Subject: [PATCH] scsi: iscsi_tcp: restrict to TCP sockets
From: "'Eric Dumazet' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Mike Christie <michael.christie@oracle.com>, 
	Chris Leech <cleech@redhat.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, netdev@vger.kernel.org, 
	Eric Dumazet <edumazet@google.com>, Eric Dumazet <eric.dumazet@gmail.com>, 
	"James E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, 
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: edumazet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20230601 header.b=DCK5ooTx;       spf=pass
 (google.com: domain of 3mpaezqgkcpm10h9xm1g3bb381.zb9bc1a-5fzf53bb3813ebhcf.zb9@flex--edumazet.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3MpAEZQgKCpM10H9xM1G3BB381.zB9BC1A-5FzF53BB3813EBHCF.zB9@flex--edumazet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Eric Dumazet <edumazet@google.com>
Reply-To: open-iscsi@googlegroups.com
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
---
 drivers/scsi/iscsi_tcp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 9ab8555180a3a0bd159b621a57c99bcb8f0413ae..8e14cea15f980829e99afa2c43bf6872fcfd965c 100644
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
2.42.0.459.ge4e396fd5e-goog

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230915171111.4057930-1-edumazet%40google.com.
