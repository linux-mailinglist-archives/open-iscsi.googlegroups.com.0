Return-Path: <open-iscsi+bncBDJOTXWY2MCBBQF67KNQMGQE6QCWV4Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0121C636D1A
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 23:31:31 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id s45-20020a252d6d000000b006ef41900103sf3997995ybe.13
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 14:31:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669242690; cv=pass;
        d=google.com; s=arc-20160816;
        b=PiucfEveNHo5mZ+PmY87S+kAdXlnfk/QgAjvR/SNpHz1Ve6enPtuibEXvikgqNf1MS
         lMkYvoQc5rt3mg1SYHJ/BuLlP6zAGZ7hZCHg0iW+YeXlLz4MNS+BSlUCy0sGOXw7gq3n
         VeGN9+A6HoAw7jy1qYmJIDnyM+dOZ6NHoeIAi1eSmOSxZN626Z9HGRj8Bj3GsHR/K4Fz
         XBQ4Yvftk3saSEE6sbvtQ7W0O+QDeNRRE9VHn7TV6BSv7rVuteyoGIzMo/UkVFzxuIaR
         mqh01LUS0/khMTvk3hI0e1sRFMMVTZW7RGPMCuyFhP3PwObqcfmXE5zHvvUI9NPw0arS
         TBwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=c7vRIFYK/wXdbRqycIFLOzSeA5Qx+wI1QJVUbVKfQds=;
        b=Z9FomY+TyCZMfx93k8yVQrq00mKJkoyjML0AtYz9fwaT7KOSkne28u5mTJhFZprgoB
         Kg4M2GC97Wjpbbeh865H/q3BfLNG8RgejuzuKX6tm6pQ3F6hoKss5gSlGc+GzOqSJM2V
         jVfZ7qRpFwTjNhZDoNIbk5YmY+ustgWCwG2MGw5+0dgq9kzGmSu1QxX73zyw9xE+Q+YD
         rakDSRJQueMXU0wDpbysnrjk8XBJ6aG1OtAAazszf/MTAkgqo7hgR9T1ooFsh6D3KTPg
         QvA210oeJ8uqdZYA/5CAU8ZI6aIbdlZo/IWbxs8x3Dd8Cev0oJnXJPFPEv/jTrpHZl1F
         Ubrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="J9UbiYc/";
       spf=pass (google.com: domain of bcodding@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c7vRIFYK/wXdbRqycIFLOzSeA5Qx+wI1QJVUbVKfQds=;
        b=VKQCv+ZUVp2sr36kim0JavbFSBci9NWCnhtzDjikXQ5AOavIiL5Q5EcpuIrwI2igmH
         aLoTHS+SGMy+Vce8S8yMxwUsFPPgbATCfyFXkQVj4L73s8ozi8LLXtTbZmOoDKSo5mps
         jVmLQvyvJUETL0SupshosfIXltGWdjjXHHB7MX6oAA/WlBu0WHcV629YcnluQgHOLQuO
         2NO/S1eG/kmhC2bEDgMtMvh5HMzB/LZJY0+hNfzLQu9OGRB/IXxUq+YoXZtUYa0muEgC
         3o7ZDm3sDzwg4LErRwlkA+eJHXmsO85LoSeOxdq5P8HIZDXbd/8spHvDgBdwlCGsty16
         Xj9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c7vRIFYK/wXdbRqycIFLOzSeA5Qx+wI1QJVUbVKfQds=;
        b=B8QU5TQbqUWcCUVUS+cU2VuM/1wUmSnNzSEZjwJjhV/ASmNIhgR5Gj7DSxEHBMoV0P
         8L99XZGU/t3bC50wqNMrP6HqMVSC4BnJlWvqn2xDe9j6P50kd//D51EK7R8sUDsUW6l9
         COCe74m4oRIs0oYCnJy1MON8dtyOQk/i0yCqGkNdQfU9dFJyFkEDRyOrisTnOhAk8qkj
         QMr9wuKXaky2YonZOIscpCDBFiukdLLnXFVD7Krz25ApkJpZAbiqyPR1hiHjhcV1q0Ya
         9JOdl0BgAsQS6Uus1Imm9L04b7G4sqDhEsCeM68Dvur93PGUkmAwIb1PRN/uBT8NgNaf
         mKRQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5plY21t9/JJ3T0lp0IDt3jJcxUZdGeljT//2DtSURlqJsJLG70zH
	FQSF6lbDcvWGNH3PFI3pmrI=
X-Google-Smtp-Source: AA0mqf60akOytHKaHO/cEo6oxMN/PFESmRYsKwDpZPO1z2Cs7um3sqJIha3uWAaIxEVZI1GNJvTe4A==
X-Received: by 2002:a25:dd1:0:b0:6e6:fc12:7ec5 with SMTP id 200-20020a250dd1000000b006e6fc127ec5mr26927506ybn.41.1669242689944;
        Wed, 23 Nov 2022 14:31:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:91d6:0:b0:360:d89f:2b52 with SMTP id i205-20020a8191d6000000b00360d89f2b52ls64672ywg.2.-pod-prod-gmail;
 Wed, 23 Nov 2022 14:31:28 -0800 (PST)
X-Received: by 2002:a0d:d7cf:0:b0:3a7:ea16:d945 with SMTP id z198-20020a0dd7cf000000b003a7ea16d945mr10782469ywd.22.1669242688350;
        Wed, 23 Nov 2022 14:31:28 -0800 (PST)
Received: by 2002:a81:4b43:0:b0:36a:efd4:b0e6 with SMTP id 00721157ae682-3944380e2a3ms7b3;
        Mon, 21 Nov 2022 14:02:15 -0800 (PST)
X-Received: by 2002:a25:e444:0:b0:6e6:d99a:190e with SMTP id b65-20020a25e444000000b006e6d99a190emr1912548ybh.567.1669068134776;
        Mon, 21 Nov 2022 14:02:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669068134; cv=none;
        d=google.com; s=arc-20160816;
        b=GPYe9VJp6fH1xjkai/uLCkCUOqO5BxFRrccrnECvaNbm80FmAtM427KVxGKyhVlzOH
         eXD46dzdPGXD0hVHcCYYf2gNZ/Z4sw6HggqlCJrTTRonIRQeSxgu2HKIOyN2PZiRuPas
         Kq/ozE0sxAwt8BUHp6ytHLTYEFlADSc9y4N+upsgH92yU3CAk7RWrDL5feLakd0++2wy
         u7qlZu7qRQqQOsbkzyv4mgJy0KmWgQHl1jDFgUTqfeW/3Wmrjvx9aFywWSDwp9vTAweV
         iK4vi8VB7BRX4BqptC1L0KYX3BgfcbyrqSCjuFEGUXBgDWVqwBpnk89MBGzx2KqeAdGQ
         oL+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YMKd/Bs7qgKxK3d2yDLuSvYLpTNEB6rexVneY8E6It8=;
        b=YcLOTkuDW49fPdxbhggzBkXb2eFSCdWR4ncR/A5AuruNbfekDTHN/sr28/hJRxIgul
         MDUmNXtnTU5Sp+XyGoyaODllDG4lkTEKi2w2R7DNwZaW3pXl4VNuphPBumgkRR1w6VAW
         G24AEUnxg190O4H1Vbl7+tgkxIJSMmbliqkBrTNiHRwkpmlRs8B+CH/5+EbfiAEVZ+ty
         zQGE2SdvQhfjlXhYQq9IVOxoC1UU3ript3zMqMrMpgtiDBfh7QBlL3I0rBjeKR5JGGeJ
         mJSJBq/TqAtm57V4vL7kInm0kbrWguzsQeQPPa6OIl8xOsv2zl6IeQOye1+Rgi0g1oXv
         hgDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="J9UbiYc/";
       spf=pass (google.com: domain of bcodding@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=bcodding@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id bf16-20020a05690c029000b0038a0b6787ebsi685395ywb.2.2022.11.21.14.02.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 14:02:14 -0800 (PST)
Received-SPF: pass (google.com: domain of bcodding@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-97-BCJecrIfN9ORT1g62yEryw-1; Mon, 21 Nov 2022 17:02:12 -0500
X-MC-Unique: BCJecrIfN9ORT1g62yEryw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4575101A5C0;
	Mon, 21 Nov 2022 22:02:03 +0000 (UTC)
Received: from [172.16.176.1] (unknown [10.22.50.7])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B2304EA47;
	Mon, 21 Nov 2022 22:01:46 +0000 (UTC)
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
Date: Mon, 21 Nov 2022 17:01:42 -0500
Message-ID: <A860595D-5BAB-461B-B449-8975C0424311@redhat.com>
In-Reply-To: <26d98c8f-372b-b9c8-c29f-096cddaff149@linuxfoundation.org>
References: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
 <cover.1669036433.git.bcodding@redhat.com>
 <382872.1669039019@warthog.procyon.org.uk>
 <51B5418D-34FB-4E87-B87A-6C3FCDF8B21C@redhat.com>
 <4585e331-03ad-959f-e715-29af15f63712@linuxfoundation.org>
 <26d98c8f-372b-b9c8-c29f-096cddaff149@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Original-Sender: bcodding@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="J9UbiYc/";
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

On 21 Nov 2022, at 16:43, Shuah Khan wrote:

> On 11/21/22 14:40, Shuah Khan wrote:
>> On 11/21/22 07:34, Benjamin Coddington wrote:
>>> On 21 Nov 2022, at 8:56, David Howells wrote:
>>>
>>>> Benjamin Coddington <bcodding@redhat.com> wrote:
>>>>
>>>>> Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting the
>>>>> GFP_NOIO flag on sk_allocation which the networking system uses to decide
>>>>> when it is safe to use current->task_frag.
>>>>
>>>> Um, what's task_frag?
>>>
>>> Its a per-task page_frag used to coalesce small writes for networking -- see:
>>>
>>> 5640f7685831 net: use a per task frag allocator
>>>
>>> Ben
>>>
>>>
>>
>> I am not seeing this in the mainline. Where can find this commit?
>>
>
> Okay. I see this commit in the mainline. However, I don't see the
> sk_use_task_frag in mainline.

sk_use_task_frag is in patch 1/3 in this posting.

https://lore.kernel.org/netdev/26d98c8f-372b-b9c8-c29f-096cddaff149@linuxfoundation.org/T/#m3271959c4cf8dcff1c0c6ba023b2b3821d9e7e99

Ben

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/A860595D-5BAB-461B-B449-8975C0424311%40redhat.com.
