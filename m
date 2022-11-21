Return-Path: <open-iscsi+bncBCCZL45QXABBBQF67KNQMGQE6NXPQEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DD3636D19
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 23:31:30 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id x6-20020a4a2a46000000b0049ca27b1507sf37086oox.5
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 14:31:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669242689; cv=pass;
        d=google.com; s=arc-20160816;
        b=VAszTMUvi4g6nETADJpdBFUwc4eZnF+lfSUajh8uXpFmRCKA1NtZMsD+/KZu7FOEKo
         CteeZTE22Tfnme/8khhKO6wSIRLe121B+bhjvbs+Dmel8FGpx6cEmg0B58CCCYFNAMAo
         REzwBBb0fnmZST6q9dmodBzO8OtGDh58/3zNcdLa9JpykdlkprZHc+7T+gLPerQGJtOi
         mOOkWf6ndP4VFfB+izCNhqcVpaGggp/DZn6Hn8bJ2GiBggvRQNdAeDtsZWFe/FY9/QZJ
         DyoMJFfv46IrIpItuEzxNB2U9QXSy/iiJRwDqrNCESafNk4oTTDm/gv0gz9VBVvgmOt5
         hh6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=ZfLt9R/vmLrKADnnMRerTvAWl4oqOmX763sx3pdga4s=;
        b=cx4VFPkl1MHe7WUm83BddUt+ZwGa50jRut8v72IaxXhmKs8LfUKUzGdYgTEoRyN4a+
         mP3uu5x1LCtkoeFsmvlFZwg3RhGRkpxAJi5TsDXLQ5sqnyVYrnRptv6jFYHdm7RogA0P
         6kCfxDr+wn3aESWBL6hqBpEDQyWzA8qsU7DPQvr5lkGiqdqs4xdu+pS08MGIOcWFPryA
         dN4Id5si8jlVybbzCjK8cQvx1m+9tsy1IneyYcMmYr+pl9EiTsBibn7gC3JqYZQJo6ev
         Nz5fZWt3zQGxB64d4ruyVAncPtPDV3Z1I3PvpKIBFKi/gY7aZnY2k6Lg/SkBXvuO9bnB
         7xmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Hffgzad5;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZfLt9R/vmLrKADnnMRerTvAWl4oqOmX763sx3pdga4s=;
        b=QNubUiykXNLg2jn3lz9UhjRl3WUM0Da72kxLlQRgKfO71iut0pQgdmIHUojavcKun5
         572wORb4Xo2cgfVc+MKNgNz6gxWJrA/XEuOK/ydLOQtGGCg2IX1FWGChKHgLGDFmEh1g
         VIbJxbh34/kfN86TUhTK6ZROpPwyY/JK6JxCY+PFMNi8pqKK03ah3z5rJGQKcERkWWeW
         N6COXFA6gbbV7ZFkp1PukPq315Yt9vCTsfLffEhIbJx6vwDViEJsq8V1FOWbwjc20JqY
         qNcv78i0hcoiDSVIpINgb7n9uDG1PZc5mIgu2wKNZht2uWYhkJXO6XJynNRuVq97NmEs
         RFdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZfLt9R/vmLrKADnnMRerTvAWl4oqOmX763sx3pdga4s=;
        b=UW0vbzTmenPLwCalBhmwLzrcIQiF98y5aqJO101ACYvjREeY0fL583R97LKQcpOeyq
         jxCkXcx4JETj4vfBuhAxv5nBnDfTsoiECspYtgobq61Irxs/9ap6MsyZ+69jK43rRkW3
         EFM9Sh0F0XiZM0q2RKreZZFJ/5+UZlCAT77pSg3cCmJ9Tm5EFm7t8ZNyNKe629ix3oi/
         s+nQE/uYDoeswZJXp6J75JtIzVmxAj4H+RRipqw01QTehzsD8YDabQTaI9VnwQd8+ba8
         5YYyxdzYJ4cFt6xUzjx3wNVoQouDK0LljFPatanlbpEcAAax64pyJ/pl+sN47J0UP/sl
         lLBA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pm5Go586fP/0MGxscDk32vpIiGYVRajYu4iQL/WyfCO2kRf2QUo
	Db93T2dLbPOR9NVXb0ty+FM=
X-Google-Smtp-Source: AA0mqf6xqgmqwr0Dmy6ghAuzH5M18zCf/SEGTvj6EtzJi751KwF5MguosI0KcKWOAZelu60NKc05FQ==
X-Received: by 2002:a05:6830:14d8:b0:66c:4887:fb69 with SMTP id t24-20020a05683014d800b0066c4887fb69mr14702039otq.268.1669242689734;
        Wed, 23 Nov 2022 14:31:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:643:0:b0:354:b362:347f with SMTP id 64-20020aca0643000000b00354b362347fls15761oig.2.-pod-prod-gmail;
 Wed, 23 Nov 2022 14:31:28 -0800 (PST)
X-Received: by 2002:aca:bcc2:0:b0:354:4a93:10f7 with SMTP id m185-20020acabcc2000000b003544a9310f7mr5057225oif.220.1669242688384;
        Wed, 23 Nov 2022 14:31:28 -0800 (PST)
Received: by 2002:aca:bdc6:0:b0:359:a2e5:182 with SMTP id 5614622812f47-35b345e4fddmsb6e;
        Mon, 21 Nov 2022 14:32:06 -0800 (PST)
X-Received: by 2002:a05:6870:788e:b0:132:f7b8:3f27 with SMTP id hc14-20020a056870788e00b00132f7b83f27mr11286737oab.116.1669069925909;
        Mon, 21 Nov 2022 14:32:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669069925; cv=none;
        d=google.com; s=arc-20160816;
        b=EusksovB4UOEiVZepkVsHE7AcNj4JKjSAYgUkhz/l2iT+LdEl5K3T6fmCN+OSCjLnH
         P3gOcSCTSv0TGARnQyKJo/qgZ9JM38TCvL+Jeh4geOJjMGwxbsKDyLV9d+sANlqJUmcl
         Sc//t+Jb6j8746V3Sf1sgmfOJVIa1xDypXzPIWU4areDwWqCsc/lMJu5JCA2ivxK7MCb
         pqyrFGNuhgWiRsygY43D3dK5Kt+9G3olzommwBWIBmXlx6Lb0Lg0plS3EBU5VaANapqR
         0Y3SVFG65Wzka2qyji9UmRAosFfMvP8SNPyBPFC8LThFb7EFqjOBsXq6rvZ86Ibz4zjd
         tLyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=C14m+5yBrv+u7QhAN78BFentZAFfnah8l0PUC4om7m8=;
        b=I3A61BOSfWFz2qzRdNfOruMHz3ejBP9s9CJIKo7ecU4nsr0q/zHQEstlzfl49atu1u
         pV7QVhx31yzhr30ch6t5CZpGTm+2UGl32wkFjTGbpVVt3qV8pKNpljLp6m65643RVCy/
         40wJjI4q8gcgkpPZ3wYLrJJ/j//jDdZdKNh0InoeZtq+/Sgomu3/BDEy/e7Vl8wk717r
         xvZ49+G1p+hA5jaVtLqTchAbjnKIh79aIYvY2nKMhOxh6u+vnZ2RKeoD7n1BSfMFI7iV
         7oxHLeUKmBqfMNUjevXsNEgr79W1/YryzT5mM2ROKA8S+aT85+2inhWdHcKwMc+6drb2
         A1gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Hffgzad5;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id e18-20020a9d0192000000b0066da9f2faeesi701666ote.0.2022.11.21.14.32.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 14:32:05 -0800 (PST)
Received-SPF: pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id p141so9706272iod.6
        for <open-iscsi@googlegroups.com>; Mon, 21 Nov 2022 14:32:05 -0800 (PST)
X-Received: by 2002:a02:cba6:0:b0:375:a360:a130 with SMTP id v6-20020a02cba6000000b00375a360a130mr9477313jap.307.1669069925449;
        Mon, 21 Nov 2022 14:32:05 -0800 (PST)
Received: from [192.168.1.128] ([38.15.45.1])
        by smtp.gmail.com with ESMTPSA id f15-20020a056638112f00b0037502ffac71sm4612316jar.18.2022.11.21.14.32.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 14:32:04 -0800 (PST)
Message-ID: <96114bec-1df7-0dcb-ec99-4f907587658d@linuxfoundation.org>
Date: Mon, 21 Nov 2022 15:32:02 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
Content-Language: en-US
To: Benjamin Coddington <bcodding@redhat.com>
Cc: David Howells <dhowells@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Jens Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, Lee Duncan <lduncan@suse.com>,
 Chris Leech <cleech@redhat.com>, Mike Christie
 <michael.christie@oracle.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Valentina Manea <valentina.manea.m@gmail.com>, Shuah Khan
 <shuah@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
References: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
 <cover.1669036433.git.bcodding@redhat.com>
 <382872.1669039019@warthog.procyon.org.uk>
 <51B5418D-34FB-4E87-B87A-6C3FCDF8B21C@redhat.com>
 <4585e331-03ad-959f-e715-29af15f63712@linuxfoundation.org>
 <26d98c8f-372b-b9c8-c29f-096cddaff149@linuxfoundation.org>
 <A860595D-5BAB-461B-B449-8975C0424311@redhat.com>
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <A860595D-5BAB-461B-B449-8975C0424311@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: skhan@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=Hffgzad5;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates
 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On 11/21/22 15:01, Benjamin Coddington wrote:
> On 21 Nov 2022, at 16:43, Shuah Khan wrote:
> 
>> On 11/21/22 14:40, Shuah Khan wrote:
>>> On 11/21/22 07:34, Benjamin Coddington wrote:
>>>> On 21 Nov 2022, at 8:56, David Howells wrote:
>>>>
>>>>> Benjamin Coddington <bcodding@redhat.com> wrote:
>>>>>
>>>>>> Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting the
>>>>>> GFP_NOIO flag on sk_allocation which the networking system uses to decide
>>>>>> when it is safe to use current->task_frag.
>>>>>
>>>>> Um, what's task_frag?
>>>>
>>>> Its a per-task page_frag used to coalesce small writes for networking -- see:
>>>>
>>>> 5640f7685831 net: use a per task frag allocator
>>>>
>>>> Ben
>>>>
>>>>
>>>
>>> I am not seeing this in the mainline. Where can find this commit?
>>>
>>
>> Okay. I see this commit in the mainline. However, I don't see the
>> sk_use_task_frag in mainline.
> 
> sk_use_task_frag is in patch 1/3 in this posting.
> 
> https://lore.kernel.org/netdev/26d98c8f-372b-b9c8-c29f-096cddaff149@linuxfoundation.org/T/#m3271959c4cf8dcff1c0c6ba023b2b3821d9e7e99
> 

Aha. I don't have 1/3 in my Inbox - I think it would make
sense to cc people on the first patch so we can understand
the premise for the change.

thanks,
-- Shuah
  

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/96114bec-1df7-0dcb-ec99-4f907587658d%40linuxfoundation.org.
