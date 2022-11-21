Return-Path: <open-iscsi+bncBDJOTXWY2MCBBE567KNQMGQEAKG2TVA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFA8636D16
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 23:30:45 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id c4-20020a4a3804000000b0049ffd89575dsf32803ooa.23
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 14:30:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669242644; cv=pass;
        d=google.com; s=arc-20160816;
        b=uMZx0nMT8ODpIcCHzKa9nvMkjvZxDfaSAKWPj2aZXXT9BkJv/qfsMvLMYMewpgWXnS
         VsmO4tAHYOnFuFFEYXZrwTd6CA2e+JGJTRH+/QVqTCEwz700+dIAzuLmfKeJ0L0O8+ZS
         K5AfluE0R0GkLXdMkB0NXAUVx4lR1tCRb7hdLlwUI7T6xUa2vg5pZSUwqR7MipbT8RK7
         kiFZPtTTVmtXIbmK7o8qM62DsGELFwIz6E5eDZomH8bx+7oZvh5pPAdEjIXTbHFzqnw2
         6R3cDwzqlPlkwo1md16BpK7YGnLtl/8PJRIf4S1dnwFb5k/XqGr1QOsNmlWde3PPGIBT
         o0+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=s5JUk1KXW47r816XX2RFaHh+AWMtx7eQ09s0carlWaI=;
        b=qVq4623au4y8teMDEQWGvSd6D4zf1yeejbxa3cfT0AHVWRdml0Ey4Tk9oLxXCuYnBd
         YKK0aOeYChxDr768OqaIZgSBJOIpLMos+y9NVXOBEc+i8guV7YBLFssLhpNCyLo2zLb8
         TEHsyRJpY9/SvgYjnttZzwaw47Vl9w/nkJzl/qVpJSVuCqD5esrHDAV4kesQ+QIwZAtT
         3eG8q2EBcqhABPiyP6FovZ1QpPTzOdlkPdeTe9gXd+qjHFe014yiZtz9tk7TyGncM6z7
         UKpQiifXszILmgh9F86MqNJwQUbNNE8Fmqii/jU1GLNQiE1ns8EodxywXiqJZuZGzseJ
         wIIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="IVL+0z/h";
       spf=pass (google.com: domain of bcodding@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s5JUk1KXW47r816XX2RFaHh+AWMtx7eQ09s0carlWaI=;
        b=N4Sp8wMoIHbDcleldcczEzaEcE3JMlyIrCukhBOIQ+UrdmBVwvrs88UJ/U6RgF4Kxu
         pP6INTxB+mguwlruM7x6KyZKM8yBK1jCGEoAYE7Jl5OXd52H0hOTHTDv2K2oRjhi21cu
         yBxrH+GmsQZybnBlacMjoxrZYpIY6jh7nMh5LxKDkMv0nK0A8h4QQNOMR4rFfFqAEcU9
         rlhcm9G/LRzTMMT7Bjld6Wjrm6CmV4X3ugWt7VCWuoPjGAZpJPkuU51joQm/dzTAQNF3
         xYyg+wKMSG9f6cYWjWwHnZevuZQX+WLdr8G6GQh+S3Vl3XIq3X+gGy9h14Wpu7XTexVE
         8E0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s5JUk1KXW47r816XX2RFaHh+AWMtx7eQ09s0carlWaI=;
        b=zl12btJvLJjccsLUPvyba4l7sWBHD8UBjZah2nr13zd7hJ63zg8/LLOVWFoAAXYokA
         q4KmBMiZ9xhKOP5t4wSH71Z1c6Zn2JhEM63KEXjYz99gg2YhdG1JeNlZ6y1WYwfjIrO3
         gzdgJsI5GWInyfpHjJYJdiMoEGm04Zi/YvrXzJY1sAxflm/a8R2KFrKzIuLOLQRFm3OS
         ER0A1wNQNaQEhag6kP2jQjv8q5jjn2c5no94/QvMpth+D5jRabq+n8/9T3n2wINe7CjP
         Ba7YOySbClqkgc9gDGkZhlC/McFj7frPzE9hVK+aagEjxPOdWUwys7dKNp/1M1yfN6F+
         NWiQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmuQpaTIiMl0seax24V8WqmQgrXm12GEASXKqlom73DxWeVF2tX
	swuhlweFWqhtAvmruDZTW68=
X-Google-Smtp-Source: AA0mqf5NqC5M4Fva3/NfeGVIIoTBORT7InMGymkndjNDirLUagNLptSzu7rBxOQWtCGBFAHMqNwOSg==
X-Received: by 2002:a9d:86c:0:b0:66c:81be:66e5 with SMTP id 99-20020a9d086c000000b0066c81be66e5mr15264362oty.352.1669242644269;
        Wed, 23 Nov 2022 14:30:44 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:41:b0:661:f369:1f4b with SMTP id
 d1-20020a056830004100b00661f3691f4bls22980otp.4.-pod-prod-gmail; Wed, 23 Nov
 2022 14:30:43 -0800 (PST)
X-Received: by 2002:a05:6830:1c6:b0:660:f56e:6b58 with SMTP id r6-20020a05683001c600b00660f56e6b58mr6199482ota.101.1669242642962;
        Wed, 23 Nov 2022 14:30:42 -0800 (PST)
Received: by 2002:aca:5ed6:0:b0:35b:2a:5507 with SMTP id 5614622812f47-35b346a929amsb6e;
        Mon, 21 Nov 2022 06:35:02 -0800 (PST)
X-Received: by 2002:a54:4892:0:b0:35a:8e8e:1c60 with SMTP id r18-20020a544892000000b0035a8e8e1c60mr11772234oic.99.1669041301853;
        Mon, 21 Nov 2022 06:35:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669041301; cv=none;
        d=google.com; s=arc-20160816;
        b=AM1ah3aL13AL+vE/L7Zy3SpjL2jh5cAi1cXAnowKwN1nEuttoBGlyM/8vUIFz4gY8E
         mxvILaudLjjDF1W8PHW5elMFvu7QHOeKZpYLg01B2usWDLjYtMbtFjpxNwzFETRuIi5+
         wbRepeXQwiXxFVzYaoSdUWB9IRvZU9KN5xLZWp/mwouan/YcMNtVBBMPIyNxFBClvaZQ
         +oeu33bTxBWVRD14zQbVcqJH6UO7aSK+2htqFbqnJ9aw5ADiD2530+vKjPy2Ks+kKuoG
         s4rfgWLNJ1xzJKEqdHUFC26LPYVPtYajoypaLhhzGoYk3VT3G1/t3TzixXn4zUCFZw+l
         m0EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=181ZHweS4wHRSdLySvK3fpfT7WMJLPwn/rNHBgW8rAk=;
        b=GEOHMy9QgOBF2GJzQ8hmG4YPQAcCXiMAQGGSW0PceHET5u5bNiLJJnyEIGaUKJ4fv+
         PHbyBECYL4bJZNLesG/LbGbteSHCvG+DcOKbdILcSYKsF783RqbsEJBP3HujhSBYOr98
         fzWjtGQ7TS2nLoic6YGrdf/4ggW7mtKZcFa4HYDh6yp/ecm6Cg34Co2DDEStmxiE6/Sn
         kvx876aWB5vduIUIVYLF7HIb3DJmClKCwmyEC7FhSQuu5+oQ2VTyyhDTlMh3a5nf3yXo
         hfGFWnKPuNAm7AWYp407vK7LLharwt/s/0N+cJvU9IOYYEMP/wxQ5PF/7WJvqy6zekLr
         uA0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="IVL+0z/h";
       spf=pass (google.com: domain of bcodding@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id g8-20020acab608000000b0035522fd7d98si623917oif.1.2022.11.21.06.35.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 06:35:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bcodding@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-220-cKpJPG72PVO5ijDDtOCqbA-1; Mon, 21 Nov 2022 09:34:58 -0500
X-MC-Unique: cKpJPG72PVO5ijDDtOCqbA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1521B811E7A;
	Mon, 21 Nov 2022 14:34:56 +0000 (UTC)
Received: from [172.16.176.1] (unknown [10.22.50.7])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 61D8E492B06;
	Mon, 21 Nov 2022 14:34:47 +0000 (UTC)
From: Benjamin Coddington <bcodding@redhat.com>
To: David Howells <dhowells@redhat.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 =?utf-8?q?Christoph_B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Jens Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, Lee Duncan <lduncan@suse.com>,
 Chris Leech <cleech@redhat.com>, Mike Christie <michael.christie@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Valentina Manea <valentina.manea.m@gmail.com>, Shuah Khan <shuah@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marc Dionne <marc.dionne@auristor.com>, Steve French <sfrench@samba.org>,
 Christine Caulfield <ccaulfie@redhat.com>,
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
Date: Mon, 21 Nov 2022 09:34:43 -0500
Message-ID: <51B5418D-34FB-4E87-B87A-6C3FCDF8B21C@redhat.com>
In-Reply-To: <382872.1669039019@warthog.procyon.org.uk>
References: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
 <cover.1669036433.git.bcodding@redhat.com>
 <382872.1669039019@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Original-Sender: bcodding@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="IVL+0z/h";
       spf=pass (google.com: domain of bcodding@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
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

On 21 Nov 2022, at 8:56, David Howells wrote:

> Benjamin Coddington <bcodding@redhat.com> wrote:
>
>> Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting the
>> GFP_NOIO flag on sk_allocation which the networking system uses to decide
>> when it is safe to use current->task_frag.
>
> Um, what's task_frag?

Its a per-task page_frag used to coalesce small writes for networking -- see:

5640f7685831 net: use a per task frag allocator

Ben

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/51B5418D-34FB-4E87-B87A-6C3FCDF8B21C%40redhat.com.
