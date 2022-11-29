Return-Path: <open-iscsi+bncBDJOTXWY2MCBBQXPTCOAMGQEE4UXCII@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C0A63C58D
	for <lists+open-iscsi@lfdr.de>; Tue, 29 Nov 2022 17:48:04 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id s4-20020a056e02216400b003021b648144sf12697638ilv.19
        for <lists+open-iscsi@lfdr.de>; Tue, 29 Nov 2022 08:48:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669740483; cv=pass;
        d=google.com; s=arc-20160816;
        b=G/miy4Bpjo9B7qTEkqJdRgFNTBR8WVIBa9S+fwjBdEKy8lO5I8W7z8j4Y3sUTNFexu
         ydwt6iLEyPwtJHvsjSwLA0q4Jh57zwybC6bvR3h/yVcz5TEuUduS/1XlXubQo64aBL8r
         6qS3DOWo9Ez2vaEQb81rHmHUSRgC1D1U0Q5gVoFs1DA/7eWc2d65fPO7JtsL6WcHxQKM
         7ODvR5c749o1ReK/EN+cKhTa6nUlZ/kQQpcc0ned88zaAAQ2o3aHwwGwFy13ZOJ+9T0m
         Bh4NrKyAlOn1hPPQZXWYXt23ZMw+5TqVlv0VTzyArkWTddgkCQOoqlFSbk9dYXqOG2VO
         5H5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=te/JcxD5MBf+IOn0tVXczc5NreZo66Na9Mg/D0Uqo3I=;
        b=hbFqgABiAjXcUiGDNw1dLUUr9zw64l6jnzZ0ynHrAhXFRosVAEE2SaMMFRMMfZj3+u
         sbQH2dJ84JZQMt54PVIJSw6YmmMdiQYwHrgT2ARuiZIBwys+LhohXxWPMkCW1WMcmgPG
         v8MV1yGkP4YhQmNfeFYwpIfqv2x4kw2/PzjQD2OvFx3l5SdBFhQAnar3Q60RfonqX0ia
         Cv326a9M3w/W/SmITbdgjEuPyrsIBScNaBe1+HZgyPGYQ3YryAJ0NP3rle5+TiKCGwS4
         IL6U6klw1W79T9RR4b5itFOimmDxTBIDB2v6OPPmILX/x5Bxrn3M5p67YcIadj+wK3IP
         gK2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="K/nE77Bg";
       spf=pass (google.com: domain of bcodding@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=te/JcxD5MBf+IOn0tVXczc5NreZo66Na9Mg/D0Uqo3I=;
        b=ahNzxYKUbxWH4Z6jFJ8ijeZyty583dbm6gj0Wd/Jm9z+IUq0UcJgyR6qLrP77KCQ6o
         EfWZU9y8sjQcbAmEMucCEOxfPKKAFsVXhZzPCtonGenBVemIWJHA5+YeFE6tWfZbj0vH
         L12J7dSc4bekCBZAp3ku3GYtTlkG4dYHnRtP5M2xitS/r8Y8li9YENPYeqQp3FbFidxK
         iSnUNTYpzz8OxYuQISLdUnCaXeQLpjhU93l6HTkKTb5ZYUt+adf0MDSqCdb4R8w+Q23A
         7T7IiaqMidOURW63+6C28RupeCDGxx7gb3jMWQNYgdfkfVl5QNZxZCi9GbK8LYUyryEL
         LwXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=te/JcxD5MBf+IOn0tVXczc5NreZo66Na9Mg/D0Uqo3I=;
        b=VyDhjpxUbPG/fBZ58YMFlGnrkIw7U3VTtnojfj9ays3QmMlCwERFcfQNnz63H/eHws
         q8E9pMVIZx/vHqd1t3zl5jkZM3+JmoklO78BQAQZB5ZFThLRTg1AJTykLJ5JI1BC6Bwc
         uji6GKJ3Mj9RypOsjs8AhnGqPGRJQoZm7bCdgGv8KSdJNjywKf68zYS/K2VGhvnwDV/z
         cPc5GwsMsnxg8wGCxsrjgMu0ekf3d+1C+g0WPuWUrJqnLbdZKhvdbWhPlPGAbnmT7Nqh
         sIMS7H4r35uk6r1wmdoFsaAjlB7Ck4QvD402GiizgKYxVILfresn8wAjEuYfrWfEt7cg
         gn6A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5plrE07SIirTdb+aoupC2FVT+3lou0Ut7W44Hprf+QmyQj6F3sYF
	wMSEUioN4qi+JIg0pVkQaCo=
X-Google-Smtp-Source: AA0mqf4k3LserJvbmcIEZOphaOVpcXhLUkbYWjcACSb4d3PcNcscR0joWXpNJtsqvafFRLgtMO/sLw==
X-Received: by 2002:a92:a301:0:b0:302:e5dc:b119 with SMTP id a1-20020a92a301000000b00302e5dcb119mr14066729ili.45.1669740483435;
        Tue, 29 Nov 2022 08:48:03 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:11a5:b0:302:a89d:90c9 with SMTP id
 5-20020a056e0211a500b00302a89d90c9ls2159429ilj.3.-pod-prod-gmail; Tue, 29 Nov
 2022 08:48:01 -0800 (PST)
X-Received: by 2002:a92:6c12:0:b0:2eb:1f07:5a7e with SMTP id h18-20020a926c12000000b002eb1f075a7emr18302792ilc.0.1669740481697;
        Tue, 29 Nov 2022 08:48:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669740481; cv=none;
        d=google.com; s=arc-20160816;
        b=G+ELjLOs1bCwUjwoxqnxTiIbhu61B7es3bjHXYFBycA5muwvy01FK/1Ye/Xcz6mABC
         7Spb4syfchyvdaJm4HGgcNlcnobPfG/ojjnZkYUgjoI5cIvYbXdmsCNpMpyBBQDil09h
         TYnqazTtIKPiXuMbsnHHlkXQy/VddFYiodyrLGDSgwoV/OL+aiBjR7FD8r7U0d80fcHL
         jESwjVCHITm5mAEkXV0+XohOo9UgP7FaXgnuxb4If1xf9FYF0jrlUna3kIY5axhvuZhd
         LaQH1rZmk29Pu0a8kBagBPK0MGPpU12x9Qsug8AQpshaxin7LBAx7pj96u6riLJcef8P
         w5nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=e0muEHBDbnLFxSz/8uKrynkgUxzkHQQXyf0Q/GGNCDo=;
        b=EdbfyyUbyqN9uzpHQ5LUyeod2UF6qnldvu3m/fUmXzokC10xAXxTmbeA2U7NV8QG+B
         49zPoh99/TyqzspRQpPi8WeOBDA8qZcoPdh3jhRf63CTQ7Q5WgZ2hfX/32/QSzFVyiG+
         rOFUy3pLXHCtMCaWbkRaEIUdbUlNkVAg3EtLkqpOoni41+ivYgKkyi5PVDibHduKQYkM
         mYHMthvJn5sujpWFcqlFqi8/eVHpaMPGVEzpeEkJ8uzsWsYAvnp0LYfKfWcOuqw8Ge5y
         assQuDH+Tmu7/Oc2Gn0rFP6Brt2WDAI/LqFW5pJ73ovOVIzmUD5Yp2qCp2jcba5RqVDD
         QXRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="K/nE77Bg";
       spf=pass (google.com: domain of bcodding@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id w11-20020a5d9ccb000000b006a128dbb6efsi628956iow.0.2022.11.29.08.48.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 08:48:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bcodding@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-97-NLEV3qqHMjm2VIHjZofz1g-1; Tue, 29 Nov 2022 11:47:58 -0500
X-MC-Unique: NLEV3qqHMjm2VIHjZofz1g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA346101E155;
	Tue, 29 Nov 2022 16:47:53 +0000 (UTC)
Received: from [10.22.16.202] (unknown [10.22.16.202])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 417A52166B2D;
	Tue, 29 Nov 2022 16:47:51 +0000 (UTC)
From: Benjamin Coddington <bcodding@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 =?utf-8?q?Christoph_B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Jens Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>,
 Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Mike Christie <michael.christie@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Valentina Manea <valentina.manea.m@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Howells <dhowells@redhat.com>, Marc Dionne <marc.dionne@auristor.com>,
 Steve French <sfrench@samba.org>, Christine Caulfield <ccaulfie@redhat.com>,
 David Teigland <teigland@redhat.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>,
 Jeff Layton <jlayton@kernel.org>, drbd-dev@lists.linbit.com,
 linux-block@vger.kernel.org, nbd@other.debian.org,
 linux-nvme@lists.infradead.org, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
 samba-technical@lists.samba.org, cluster-devel@redhat.com,
 ocfs2-devel@oss.oracle.com, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org
Subject: Re: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
Date: Tue, 29 Nov 2022 11:47:47 -0500
Message-ID: <794DBAB0-EDAF-4DA2-A837-C1F99916BC8E@redhat.com>
In-Reply-To: <20221129140242.GA15747@lst.de>
References: <cover.1669036433.git.bcodding@redhat.com>
 <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
 <20221129140242.GA15747@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Original-Sender: bcodding@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="K/nE77Bg";
       spf=pass (google.com: domain of bcodding@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Reply-To: open-iscsi@googlegroups.com
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

On 29 Nov 2022, at 9:02, Christoph Hellwig wrote:

> Hmm.  Having to set a flag to not accidentally corrupt per-task
> state seems a bit fragile.  Wouldn't it make sense to find a way to opt
> into the feature only for sockets created from the syscall layer?

It's totally fragile, and that's why it's currently broken in production.
The fragile ship sailed when networking decided to depend on users setting
the socket's GFP_ flags correctly to avoid corruption.

Meantime, this problem needs fixing in a way that makes everyone happy.
This fix doesn't make it less fragile, but it may (hopefully) address the
previous criticisms enough that something gets done to fix it.

Ben

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/794DBAB0-EDAF-4DA2-A837-C1F99916BC8E%40redhat.com.
