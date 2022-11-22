Return-Path: <open-iscsi+bncBDJOTXWY2MCBBQF67KNQMGQE6QCWV4Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CE3636D1C
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 23:31:31 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id c8-20020a4a87c8000000b0049f149a83fdsf34386ooi.19
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 14:31:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669242690; cv=pass;
        d=google.com; s=arc-20160816;
        b=wRf8svZpN0Uucij5yV16dfPPaEGw9ifuJFCD28ucg0JZqDxD13EhN1mPW+SlV1ynzd
         J+ddTVrYdNNQLPE88Lz2l4Cu2EjgtCm2OqplYQONoXNipWoP4/qtCQeVVz2Bt4q40L1Y
         d/ou4O9fHcxEKQ1GY/fUJwi0HyDIc/pJHqisEWWeeRddhUt3Q83IpEXUZFtU/4iA7sa2
         9ebUC+a2K7NblvyOWs/1qlMPYPgSRoNVgsCfS/ZKSt9fY23WnK6cIIW4YNW1iNZ0JaD3
         NL3fG8aG97au5KUycQYPxYxd8cqMZUDWW5zcmQiJFk+j1nL17LVsN6zVGCFApxflPAUz
         7G6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=vXjmOZ7rofAJPuPWT8vkple0xPoPXVTMnvtcaZGW+Ig=;
        b=PslkTyXr/5HAPufxQ5Ypw2pP2t4pL6oST3hDJx+skTiYfuVpeaUK6vD8coeG7GI8gj
         kTuYhG8N5BOlCrMi2woTY44iL2xDFIRLI4/XCZUpRaG30aIJZ7KW8mV48/VKdjJ0D8nG
         8hMCy6KMNurIGstM8hzaOTDyz8g4zCDkEes4LlSayhPzalMejFvqQK/KVJdwq5ZpQGnf
         DZrByunCnP/vkbBcct8yMYuUdtRSLjDgkyVa0fc6ZvdMgZAAWwXNSOiONQq0b9vbnTyE
         Z/q8t0V00WtztMocZZLcRlf5UQ2KY9b0YrBz4X0smR/BScsWbhQn+vglozP2Ml0rIco5
         /9HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GnRbTpCB;
       spf=pass (google.com: domain of bcodding@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vXjmOZ7rofAJPuPWT8vkple0xPoPXVTMnvtcaZGW+Ig=;
        b=DWxCPAqdKwYj+uaUOPIFlJcx5hb+zycMTmW7aYjmQUIBTLS5jAx8jR7M76nfwJNs6Z
         ahUApZcCFOx503Ec7eehSArSOfBx/QzRtMMRCOeHfjJiyuYPHJvBXeoK1v79eRCurIEl
         sZmLTXNckNHakknuRt6NZ9gSAmLGMe16o5W55m9L/qMhauyLlfiSd6UBSTkpHrnsDZ+K
         7t69TxprUcwAny/tAo7NVzmuFEl9JqSFynkoTVWLGZkpJjAYhfk68ArL4rk7TpDcF0MA
         Qe8CnL1tKZn1CtsTZZM2f5QGB2STLNh0y6i5oUpDzVnL+yl3LwdfU2DW6FpZUaLRccbN
         jeVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vXjmOZ7rofAJPuPWT8vkple0xPoPXVTMnvtcaZGW+Ig=;
        b=QaRb0Fxknd125oZT/ITK1W03y+rX4y0so/A15hULE3eAm86wxmFDlypZ4FyCcNWnho
         02S6J8H+6bb0JdBbEA5ZAPjHtoWqVV+tdKYfJl1rBjBUt1qlq4562Q7LOYhVkZ26AN0b
         JEsfM/jv4KN2zPN9lhgGbYXiqroKFu4M4Fue6v3ci9RmzCylZyM8T8HDDkYJ8/muJ2yo
         +MrRjyBF3VnYXUs+MMu6IBzZ0nEdgKoatTSg2BLO5CIwE/CL/3dIPUKOzkVtYK9U9JTY
         7SkFXmUHf3oGFqRsXDbxTTAYiKIJOddlEWmspbPhZgdTqKitnvZuYdCS+O33MaJ9hxbO
         Hlsg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pl+KdJrRvPUPfaWJdc6Nz6EXAm1os+CvD6kEYn1rTRHsw7WE0bk
	GfsVlukSwvIhmCD9gzUFkoM=
X-Google-Smtp-Source: AA0mqf5TWU/WImEz99ZDp+rk8vPuDSk4bbSU0meB6IfAZlx9IINCF3f/Q7PSu65AqV4dJyh2hosaTA==
X-Received: by 2002:a54:4793:0:b0:35a:6535:df with SMTP id o19-20020a544793000000b0035a653500dfmr5734476oic.51.1669242689589;
        Wed, 23 Nov 2022 14:31:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:a898:b0:143:1d71:23f2 with SMTP id
 eb24-20020a056870a89800b001431d7123f2ls29348oab.9.-pod-prod-gmail; Wed, 23
 Nov 2022 14:31:28 -0800 (PST)
X-Received: by 2002:a05:6870:a11d:b0:132:3c19:8cbc with SMTP id m29-20020a056870a11d00b001323c198cbcmr16935878oae.185.1669242688485;
        Wed, 23 Nov 2022 14:31:28 -0800 (PST)
Received: by 2002:aca:a8c2:0:b0:350:c1f3:d913 with SMTP id 5614622812f47-35b3480ecd1msb6e;
        Tue, 22 Nov 2022 06:23:49 -0800 (PST)
X-Received: by 2002:a05:6830:cd:b0:66c:75f9:29fa with SMTP id x13-20020a05683000cd00b0066c75f929famr2059891oto.221.1669127029367;
        Tue, 22 Nov 2022 06:23:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669127029; cv=none;
        d=google.com; s=arc-20160816;
        b=D+HnQeLKGq+9o54CjOWNYsIpI4AMJeiA3PwyuQ1JK2PV1G38zL4iEgEJcvQnqqbo96
         VSq9toVLf+ocXnxqXgiD5fFqIxZJSX/gk++K7t6Yun6iZ+ZUeFh2oqy7CTzh9GLCzeY0
         Wszq5i0Uw6mQHicQectGnsSm1IYb3Oa/jYW8/tATF8/eggDMkodyCQ3gJJ+ChqY3XUtt
         NuwO4+7BBuHGsWFwUrbIxQp3612XomoK/IB48YsuXVZksM8i+K+PoJczOBxAUB9bGYE+
         HCbBs6ifAZEAALPpSVHKsKMxwTSY8B/F5rR0KkloK/G9cSCdYtJL2qt6FkqjXJ6MZ7Sl
         3JmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=geVsTAOXAFmfC1p8NU5oUZW9hh2dqn+X7qlWo6CR96Y=;
        b=xZJNMyjFOR4z6d0Lr3WV9ZnzLwf1YMBvdLpmuKCTzb5tQQwXwgJaLv0uvdCErwwizU
         Pmyn+gxYVhRS8vfmnTwND4HPMxZvwLthbRCgdpb9Rqyr4bnr/QKvvUdtWCwhpt+guqIs
         jRUu3gKjP2CcpMEnmNRmdj6uT1OjLhPqSxEX7seiKzPQ+NAiGixzlW0SmtE///2IzK9y
         9Cq/AjySHLHZnknxJw3iBvfLvvZlN1HoqG/B08IpXXQiKOsBJbXf5rDSUoHNhsaAIZOA
         viK6f5Ga1x/ItgQhWJz8x2IW5LAhRouhk1jVY82FCnLFh2K7gi8ROlpe1H2EEUfrRGs+
         B0GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GnRbTpCB;
       spf=pass (google.com: domain of bcodding@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id b37-20020a056870392500b0013191afecb8si1094344oap.2.2022.11.22.06.23.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 06:23:49 -0800 (PST)
Received-SPF: pass (google.com: domain of bcodding@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-583-clNrV_glOTiRpOT7AptSQA-1; Tue, 22 Nov 2022 09:23:45 -0500
X-MC-Unique: clNrV_glOTiRpOT7AptSQA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E5F22101A52A;
	Tue, 22 Nov 2022 14:23:42 +0000 (UTC)
Received: from [172.16.176.1] (unknown [10.22.50.6])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E09D61121325;
	Tue, 22 Nov 2022 14:23:33 +0000 (UTC)
From: Benjamin Coddington <bcodding@redhat.com>
To: Shuah Khan <skhan@linuxfoundation.org>
Cc: David Howells <dhowells@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Philipp Reisner <philipp.reisner@linbit.com>,
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
Date: Tue, 22 Nov 2022 09:23:29 -0500
Message-ID: <C3E8B434-BAEE-42A8-85AF-3B676C65B2A6@redhat.com>
In-Reply-To: <96114bec-1df7-0dcb-ec99-4f907587658d@linuxfoundation.org>
References: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
 <cover.1669036433.git.bcodding@redhat.com>
 <382872.1669039019@warthog.procyon.org.uk>
 <51B5418D-34FB-4E87-B87A-6C3FCDF8B21C@redhat.com>
 <4585e331-03ad-959f-e715-29af15f63712@linuxfoundation.org>
 <26d98c8f-372b-b9c8-c29f-096cddaff149@linuxfoundation.org>
 <A860595D-5BAB-461B-B449-8975C0424311@redhat.com>
 <96114bec-1df7-0dcb-ec99-4f907587658d@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Original-Sender: bcodding@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=GnRbTpCB;
       spf=pass (google.com: domain of bcodding@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
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

On 21 Nov 2022, at 17:32, Shuah Khan wrote:

> On 11/21/22 15:01, Benjamin Coddington wrote:
>> On 21 Nov 2022, at 16:43, Shuah Khan wrote:
>>
>>> On 11/21/22 14:40, Shuah Khan wrote:
>>>> On 11/21/22 07:34, Benjamin Coddington wrote:
>>>>> On 21 Nov 2022, at 8:56, David Howells wrote:
>>>>>
>>>>>> Benjamin Coddington <bcodding@redhat.com> wrote:
>>>>>>
>>>>>>> Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting the
>>>>>>> GFP_NOIO flag on sk_allocation which the networking system uses to decide
>>>>>>> when it is safe to use current->task_frag.
>>>>>>
>>>>>> Um, what's task_frag?
>>>>>
>>>>> Its a per-task page_frag used to coalesce small writes for networking -- see:
>>>>>
>>>>> 5640f7685831 net: use a per task frag allocator
>>>>>
>>>>> Ben
>>>>>
>>>>>
>>>>
>>>> I am not seeing this in the mainline. Where can find this commit?
>>>>
>>>
>>> Okay. I see this commit in the mainline. However, I don't see the
>>> sk_use_task_frag in mainline.
>>
>> sk_use_task_frag is in patch 1/3 in this posting.
>>
>> https://lore.kernel.org/netdev/26d98c8f-372b-b9c8-c29f-096cddaff149@linuxfoundation.org/T/#m3271959c4cf8dcff1c0c6ba023b2b3821d9e7e99
>>
>
> Aha. I don't have 1/3 in my Inbox - I think it would make
> sense to cc people on the first patch so we can understand
> the premise for the change.

Yeah, I can do that if it goes to another version, I was just trying to be
considerate of all the noise this sort of posting generates.

Ben

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/C3E8B434-BAEE-42A8-85AF-3B676C65B2A6%40redhat.com.
