Return-Path: <open-iscsi+bncBCYMVIPVXQMBBYV62GQQMGQEZPP3JDI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3C86DCB62
	for <lists+open-iscsi@lfdr.de>; Mon, 10 Apr 2023 21:11:32 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id u6-20020a926006000000b003232594207dsf4647158ilb.8
        for <lists+open-iscsi@lfdr.de>; Mon, 10 Apr 2023 12:11:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681153891; cv=pass;
        d=google.com; s=arc-20160816;
        b=E4REaSdQ3/BDzYY3QNVrzKP/Hb1mHV8JvkAfeOvSSYRKOcURlUmzGD5ptcg+QtoKeW
         i6g/O0Pz//RatWnSCYt66DcdUoI1MY+9+GJ++5CKVh0MHnDrznM7TOeiaFq5Z3BQeerk
         vOdgFfO2pGYIEFc1oAvCfR1B+XbUMQ1NjxiWarGIvNv2N5MelJ9QfSKenRCATmhSoocm
         qenvW1xKUYDuR2mMegxaL+rMqih/ZaE9/OikrLF9BcXfL3/5HFCf04ej+xcLmZFNPCID
         HBq580VuHzvtWIfRZU044ln8yzz4TYcOVUB7hQs1ZojlCBBGNrJPpreQ2opnVPnR8BNj
         FKMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=1XL5DM25Oc4AUG6WAmFDI9GY6UMJnwcdd0tMsCo6XC4=;
        b=vUARaCa6bdB2Oi9Z0tdsiX4EYodUrBG7Ag92fN6goMygiH4jp6oVnm6ev1PH6sMmVl
         2onYIWKK6tJbdfcmLh45bvLcGrAghsZFQdI298PMlA4QrU9Azdp/xSpeLT7NfLuqd1YB
         NvR0SJ5NuZhZKnWGxNR0URQMejIf3k54v07BzcClb2b/C983q0Vcq3OLznilFjVPZNxS
         86PPwpqdgsBTUlH1K6NsAdu3oCUe/8DQ0C6AJIlY8YmdWJ1TBWbhnsAi0gL5zqEHtE5g
         dY55FNdKDxMepIn6rlZ5w0uDa3aHGzLhOsYlqYKuuwD/wIchC4IvUyYfGSVEkVjjFn3q
         kTUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ddodI9Jj;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681153891;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1XL5DM25Oc4AUG6WAmFDI9GY6UMJnwcdd0tMsCo6XC4=;
        b=CrKdueoBb5RoK2mnib8Jj/fQdkoxjh+uZ7DCWbe0gJ82kl4MhvAMrHzpUpu75+pJoN
         F63+zf8uw8EKfGjkXDVqkqijD9Th9czDmUX2R6BVP2yYM5eOxmfgbW9aE2m6Ziryw467
         7U+8DE78+UgRVe0lX626Up8dVN99X144qLyqw7bpCiMIvbAznME+T9GtMtD95WJPISiy
         yhpZlxDImUOju90QUZCzgTmpvD/xtG0shTzn65R8SuaiDFdavMT/BqFyEkhZpHXPw3QP
         QcBPf3S8Xe/lPxb1SnIzkf95/8FkMeAr/s5MPPMfva7ZE95yk+SW4+6XhJT2ANtppLIc
         xU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681153891;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1XL5DM25Oc4AUG6WAmFDI9GY6UMJnwcdd0tMsCo6XC4=;
        b=mcawsISbdHa5bHfYFNyCGLyhwGiVHv6TbahiiKEpwGejWn2XucnnesnE//gEpv8LOC
         /eVZwsx52tnliTUe958rUYzuxYcWHxaUV7bI9c7U8smZiHCHY9RbLN12A8QL1x8QPFlE
         Sceik+QWhOBi4PUDYsGhHv1AOJ7TWkPOb3WS/3zlizO5KsJhv+IVAKXbA1IcIl3OCoBv
         5NMJ7kXNDJiT14BZfcpU82msunDNp+dGH/gS1SxrJ2R6p+jzBN5rHcuobyt1iKC+Vtg8
         0bTCM2y7dpbSJow686o/cPW2arvUi9yenctEGYynIz4FN0f9Sgfogl9WtqKt8fL7c0hw
         WoOA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9flKOUUagyBiSJ648j3w7b/Y1zoIMT0uW+f+VAKCd0/CPXtez9j
	6L/hU5JsvniuUQe3OOPcI8o=
X-Google-Smtp-Source: AKy350Z7QjF9FnXJepwEm+88fQMdZMQLORiOkjFjtb30prc9mojMkGmMPFLyVA16nWZ0SvJEw0ORqA==
X-Received: by 2002:a05:6e02:1c28:b0:328:4e63:795f with SMTP id m8-20020a056e021c2800b003284e63795fmr6082471ilh.0.1681153891274;
        Mon, 10 Apr 2023 12:11:31 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:874d:0:b0:326:4b:d61a with SMTP id d13-20020a92874d000000b00326004bd61als10090417ilm.1.-pod-prod-gmail;
 Mon, 10 Apr 2023 12:11:29 -0700 (PDT)
X-Received: by 2002:a92:4b03:0:b0:328:136e:141e with SMTP id m3-20020a924b03000000b00328136e141emr7134633ilg.24.1681153889879;
        Mon, 10 Apr 2023 12:11:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681153889; cv=none;
        d=google.com; s=arc-20160816;
        b=TYyGiNPoebnvrlKxSegqFAhbrV6cVPWLrE4dzIeMqBsInloFDnXlkDfYUFQZeS3Qn2
         EDyeAfihwyr2vNnWNFJmh00Cj0JDS9lgYVcc+24EM/8nKXwllOMaoDWw55SAuq09q7Pr
         s5OeVmFoHtHL6w67Z8I7I+3MNFEfhbn6gG8Bvi7QGATuIVlJPzdNo2MrVXS2Bk8lrtEP
         pOtDuGB1DIMq6uBXXXomI7HTBhBiVeLq5t4Ha42+O+tcc1urfaSgpq7q+WCr+cwhAtXq
         9HoYwNgbjNutthRV9XBkzvtyzDvDIFyFLqFhqN7DmoVblJnZzrytR96FcXt5WvV30GTC
         dipA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FhYtLENcNtcLyj9Yw2HJ5wz9v0cgAEwMxc8s0tHjoZA=;
        b=dX45V0nSpBWKtSXRD3u4D6uKoqyivvrdIkcOR8OM9xSBQzaeEIv+oJ48F9Z9w/2BLu
         XndFIyUSzbJQaxlgNk+QP7w3aVbKiJKKYRiVtpBzjTFpvvbCL1dNUKseK4n/mVuqWO5o
         Ur4FHe+LDbio7Rlueb5TvdiZiGY6pAshVs88E8LyKjaW7DOXoPT5ybvMup6DZp41t1Xg
         EgIjlnUB1J4PXUo1u4jYsUZUhFR4DHAtCQGRHOKL+Ocqdenj3+EdJdsTePRnzPdzT0xk
         sxQiDnlP7sVpfCXK2m7OCPxT6RsCNub5ALb7AA0YWfvn/l5bp9vlWwOkE3aUI+kD8iEZ
         eswQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ddodI9Jj;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id n13-20020a056e02148d00b0032887adb207si648497ilk.4.2023.04.10.12.11.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 12:11:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-339-g0sfIhgJOKebvqPo2cb-6w-1; Mon, 10 Apr 2023 15:11:13 -0400
X-MC-Unique: g0sfIhgJOKebvqPo2cb-6w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B7DD185A78B;
	Mon, 10 Apr 2023 19:11:12 +0000 (UTC)
Received: from localhost.redhat.com (unknown [10.2.16.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F2BED40C20FA;
	Mon, 10 Apr 2023 19:11:11 +0000 (UTC)
From: Chris Leech <cleech@redhat.com>
To: linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	Hannes Reinecke <hare@suse.de>,
	Lee Duncan <leeman.duncan@gmail.com>,
	netdev@vger.kernel.org
Cc: Chris Leech <cleech@redhat.com>
Subject: [PATCH 11/11] iscsi: force destroy sesions when a network namespace exits
Date: Mon, 10 Apr 2023 12:10:33 -0700
Message-Id: <20230410191033.1069293-3-cleech@redhat.com>
In-Reply-To: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
References: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ddodI9Jj;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

The namespace is gone, so there is no userspace to clean up.
Force close all the sessions.

This should be enough for software transports, there's no implementation
of migrating physical iSCSI hosts between network namespaces currently.

Signed-off-by: Chris Leech <cleech@redhat.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 3a068d8eca2d..8fafa8f0e0df 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -5200,9 +5200,27 @@ static int __net_init iscsi_net_init(struct net *net)
 
 static void __net_exit iscsi_net_exit(struct net *net)
 {
+	struct iscsi_cls_session *session, *tmp;
+	struct iscsi_transport *transport;
 	struct iscsi_net *isn;
+	unsigned long flags;
+	LIST_HEAD(sessions);
 
 	isn = net_generic(net, iscsi_net_id);
+
+	/* force session destruction, there is no userspace anymore */
+	spin_lock_irqsave(&isn->sesslock, flags);
+	list_for_each_entry_safe(session, tmp, &isn->sesslist, sess_list) {
+		list_move_tail(&session->sess_list, &sessions);
+	}
+	spin_unlock_irqrestore(&isn->sesslock, flags);
+	list_for_each_entry_safe(session, tmp, &sessions, sess_list) {
+		device_for_each_child(&session->dev, NULL,
+				      iscsi_iter_force_destroy_conn_fn);
+		transport = session->transport;
+		transport->destroy_session(session);
+	}
+
 	netlink_kernel_release(isn->nls);
 	isn->nls = NULL;
 }
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230410191033.1069293-3-cleech%40redhat.com.
