Return-Path: <open-iscsi+bncBDLIXLMFVAERBE567KNQMGQE7N2T5UA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D1660636D17
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 23:30:45 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id w18-20020a4a6d52000000b0049f209d84bbsf35809oof.7
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 14:30:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669242644; cv=pass;
        d=google.com; s=arc-20160816;
        b=y993FQFrVbwjVo1KACvpwb25znS3sixJCTxvZiHae7Rit5NX3nMxbWxuB5f/FyP+aX
         UvE/6o8IZ9hoIkc90F1WJatUWeo7X1zcfEesInjTUMp4WCHOgyM4Xua+jcjQs0kDdDUH
         BUQOMSzJqj99KtR5vzRKzXeNl90pzLJ3NlXmREDKzTSvvu19wQejCns78MWdSwzXDAa/
         EH43S83U+HvgNnYu+4RK7Q6y0TYkYXpq7zHpUNvQW0DcET04nmVMRig2tRY4bdWJpiAR
         Zpl5LfLoLEIP/TV0kvMQKarE//8jb8nbS6EuJzQKVbBRzNb/g2X5obIK7zNsabzN6+3Y
         Elag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :sender:dkim-signature;
        bh=VuTEPtugeQ6ITphyPxVIIfO46iny3cld/7u77MUYvUI=;
        b=LbSKQJBGSM+BL4OQJ27zo3yIG/hYKtvhrbp1ofWxA98pPEuOROoAQWV4l8aI4AzOWA
         E9Ho3ioklhK9Yb5hQd6IuRxeAFfCegNbz8nyH0xFoicAIMBpEjykmOeviQ6swusVzvUE
         rMeGYzi/ByrROmJumFjRK2HyYJRfnOOHyRYq0vYAk8e4Ujl1Sdj6IXrXs9QQ+q2QUWTN
         cHIY8giWoUIUlxv1AdK6yPL4JrwJQARqp+TxMSOoYefhg4oT5IvTdmtm4gFDveCCtyxH
         83ZHeyZJfiDFZiiZMhVlPbXPQo6hH6J8acGtMJuMFdaxEZ/CGM8+O8wh3r0GpQ7puQe1
         zlJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bkPOmsZZ;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=VuTEPtugeQ6ITphyPxVIIfO46iny3cld/7u77MUYvUI=;
        b=giWDasPCOmAgjHjP1nRSdS2rngw1zJvCdiPHTbfCQKxkdTlNFlUeZqRqOhtiGcMvZm
         ctTk9Pn2mg9ntVmSym6cHuqb7aOThleZ8ODesLg9BRFlSdUCDQOdfWmpbYQJxpxmuUor
         8yIDWJM00FJEvTupct+y8a3IGINKyHZ3Ry3Al7phvI5VjFNjPImDJ6+xdWiB/EwOUHmt
         pw/16YSrQb0WTPE2V6gnZ+siKWJ3S1jS0ma9c8NtTXHF77tXueSdDEKeIUpsxwLsjqnj
         K6HANZBz1Djb9YLKhSENHvC2StSHXqmuP3UNqcdk8olo+96Y1JDUD+RZ+8vcYAI0r62g
         t/Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VuTEPtugeQ6ITphyPxVIIfO46iny3cld/7u77MUYvUI=;
        b=NJYRrBeLEJgxxHdDBI35TJGzBmR8cAml7dDn1SCCuQQD7dDwiZ7KS9LjidGWlpDrbL
         o1hfx/YgCWYSqFHy/+Vh3hmdr9qyOgEGefjm7QW/z+epzFHQaBdO1fwC/FHIRz6OkA20
         vAfQucjRD/dQdXeli1H81CIOQm2WgrHtSsdTadwqZ5rIwMPTQTCqOnCba8huXV+qJB5Q
         KOYdtcQ30qFiQ6NyGUnbW0i6F9Q19Xrk201pngozkGuuedB8XSANlHEr4HClUjwOZaHO
         FiGTtOZTNDozEr+N2HQfsxn3mXOMbogRqMYMEwn4HTJrIBdcmDGAYgdpawMWzYtQ1qeY
         9QeQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmZOzCFoqvc1kfAj4SOYsTpJujrSS2HNgbhje6LPSxEravRINJL
	D2rBQGydOXtUj7rxGQELJ1Y=
X-Google-Smtp-Source: AA0mqf4W2S6nuGfDh13xhhoo4jtYHZ1sTfRzjshzam6zJ0z2u4Mb1L5QlN0Iyhm3nx0thZhxIVmwQQ==
X-Received: by 2002:a05:6830:1110:b0:66c:51a8:6b1f with SMTP id w16-20020a056830111000b0066c51a86b1fmr5108189otq.195.1669242644265;
        Wed, 23 Nov 2022 14:30:44 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:6084:b0:66d:e033:27e5 with SMTP id
 by4-20020a056830608400b0066de03327e5ls24331otb.1.-pod-prod-gmail; Wed, 23 Nov
 2022 14:30:43 -0800 (PST)
X-Received: by 2002:a05:6830:6505:b0:66c:fb5b:4904 with SMTP id cm5-20020a056830650500b0066cfb5b4904mr15477439otb.237.1669242643053;
        Wed, 23 Nov 2022 14:30:43 -0800 (PST)
Received: by 2002:aca:e0d4:0:b0:359:bd85:bbd0 with SMTP id 5614622812f47-35b343d32fcmsb6e;
        Mon, 21 Nov 2022 05:57:15 -0800 (PST)
X-Received: by 2002:a17:902:9a01:b0:186:94b8:5982 with SMTP id v1-20020a1709029a0100b0018694b85982mr180080plp.102.1669039034633;
        Mon, 21 Nov 2022 05:57:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669039034; cv=none;
        d=google.com; s=arc-20160816;
        b=pdL/BIZ/yNBQG069tdSKSenYNqyEgVrT1pYXxv5WISA7/qD8YYkgv6N8njVczrR5Qu
         RLR3uaNP3iSKugcx88aKxEUvkNHTzCOL4SMiSJ9PQxW33PTIfC3nEU+eJMRRGB2I/vtc
         opbw9EPHsP/yqMOS5oTMeHWs/xuqApbdxyVOBseugQKlQFQOosyOXFB2sv6PYVuw99g5
         6TCGzr9AXCjeLz+U8vVzFUOxEc4mk/wRKckRiaYCrvbhbhy7RnO3P01j8EFd2Isd+a1h
         LZexchnZeovWg5zURSpgh8j8pirnWDa/LMo8pUP+XNUko7T94SzY4F4olEF2CKwQrnaU
         cDTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:mime-version:subject:cc:to:references:in-reply-to
         :from:organization:dkim-signature;
        bh=ZDwjBu4RghRAGfAihvi/wXSTBbp9s9Q2lKXWhxCyRLY=;
        b=s6N7k+0KdxadBhikMiA/vAcrCpIKbzw3+1r/oj7QOWh1VQzAC9rIyevSzfj/lrBPqs
         aYqGlwl/Amz+nS8TGgoCLTJ4oIN4/JE/Y5J2Wx196Qo62FNRCBXuTKPX2WSXx7zSme3b
         YDFqQeI5sBHK8y5kHsIG8euCcbBF9ESwwwq2FxPV1qs1Svl4wePEJBfdZzd5WRGdPqNb
         8IyU6oyCZe4Fr5O72JjctFOfv50Sm4DzdtK9DQ07jTLghrrh5JOzwQvWHwWKXAbRtpkt
         1YaHgjVk1tbc+CzC8V3pV0G8caNYWKOcKVcJwVucXMTmXIu82QOkJnLfUczXtFCWek7R
         iV2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bkPOmsZZ;
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id on16-20020a17090b1d1000b00213290fa218si557224pjb.2.2022.11.21.05.57.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 05:57:14 -0800 (PST)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-357-r7ih-rJfOeutGzbihEzMtw-1; Mon, 21 Nov 2022 08:57:10 -0500
X-MC-Unique: r7ih-rJfOeutGzbihEzMtw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2049F811E67;
	Mon, 21 Nov 2022 13:57:08 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.14])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 14F9D2027062;
	Mon, 21 Nov 2022 13:57:01 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
References: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com> <cover.1669036433.git.bcodding@redhat.com>
To: Benjamin Coddington <bcodding@redhat.com>
cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
    Philipp Reisner <philipp.reisner@linbit.com>,
    Lars Ellenberg <lars.ellenberg@linbit.com>,
    Christoph =?utf-8?Q?B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>,
    Jens Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>,
    Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
    Sagi Grimberg <sagi@grimberg.me>, Lee Duncan <lduncan@suse.com>,
    Chris Leech <cleech@redhat.com>,
    Mike Christie <michael.christie@oracle.com>,
    "James
 E.J.
 Bottomley" <jejb@linux.ibm.com>,
    "Martin K. Petersen" <martin.petersen@oracle.com>,
    Valentina Manea <valentina.manea.m@gmail.com>,
    Shuah Khan <shuah@kernel.org>,
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
    Marc Dionne <marc.dionne@auristor.com>,
    Steve French <sfrench@samba.org>,
    Christine Caulfield <ccaulfie@redhat.com>,
    David Teigland <teigland@redhat.com>, Mark Fasheh <mark@fasheh.com>,
    Joel Becker <jlbec@evilplan.org>,
    Joseph Qi <joseph.qi@linux.alibaba.com>,
    Eric Van Hensbergen <ericvh@gmail.com>,
    Latchesar Ionkov <lucho@ionkov.net>,
    Dominique Martinet <asmadeus@codewreck.org>,
    "David S. Miller" <davem@davemloft.net>,
    Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
    Paolo Abeni <pabeni@redhat.com>, Ilya Dryomov <idryomov@gmail.com>,
    Xiubo Li <xiubli@redhat.com>,
    Trond Myklebust <trond.myklebust@hammerspace.com>,
    Anna Schumaker <anna@kernel.org>,
    Chuck Lever <chuck.lever@oracle.com>,
    Jeff Layton <jlayton@kernel.org>, drbd-dev@lists.linbit.com,
    linux-block@vger.kernel.org, nbd@other.debian.org,
    linux-nvme@lists.infradead.org, open-iscsi@googlegroups.com,
    linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
    linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
    samba-technical@lists.samba.org, cluster-devel@redhat.com,
    ocfs2-devel@oss.oracle.com, v9fs-developer@lists.sourceforge.net,
    ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org
Subject: Re: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 21 Nov 2022 13:56:59 +0000
Message-ID: <382872.1669039019@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bkPOmsZZ;
       spf=pass (google.com: domain of dhowells@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


Benjamin Coddington <bcodding@redhat.com> wrote:

> Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting the
> GFP_NOIO flag on sk_allocation which the networking system uses to decide
> when it is safe to use current->task_frag.

Um, what's task_frag?

David

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/382872.1669039019%40warthog.procyon.org.uk.
