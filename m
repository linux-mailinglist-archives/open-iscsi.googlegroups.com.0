Return-Path: <open-iscsi+bncBCS4D34BZMBBBT7WWGKAMGQEW7G2UJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0ED53233D
	for <lists+open-iscsi@lfdr.de>; Tue, 24 May 2022 08:29:37 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id l14-20020a05600012ce00b0020d06e7152csf4443756wrx.11
        for <lists+open-iscsi@lfdr.de>; Mon, 23 May 2022 23:29:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1653373777; cv=pass;
        d=google.com; s=arc-20160816;
        b=mGrmRM+wN6WeIJVsjrLMboXKrlcxPlKLWaEkiMak9cDMpyeK9d+5ZNQkOly4E7sNaq
         VQ+il6M6IZw0JSWGKGg56IcdyLY0PyQlavQPnisF9QuHsHP9kJFMatS/DYFq+R7/Q0S5
         Y7I5Ky6akG9P6U4mflNo3vioyafVf9qkgbYbqr88n6E9XiCy8OMu3gbbDJ2LJF+wqdJV
         OL0BEWgV2IKGVq2BMOOVvWfopUXaAIq99Oujm1ri2sm6a5vhkCoZVQnmMvnEoz3pSiNi
         EwvNdlAtqL2b8gHBDqouJ6gqD7jj/ZiRJHg7qZpzWqnRKttHX+0NDP9YofHlN7K4dCeV
         Sl4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4e+4MvwIzqkSBZonCp6DKsnjGXCM5TEBxXVkDOGmWpo=;
        b=gcwnwyMNf5oVWFQMFJxlAQz/wyWzvBQnPzoiBcUbT9YLkIBLVvv2N2yUZlffTrR34k
         s+x2KKQKKqoy+98p/WqPVM9iDCUjcAuXTsUbDj0A9GLbpab6eDrEhZxPRT86Vkr4NyCd
         EQY12mwrznZNPSp/FnPVmaGzgzomIpjJnip+8CHkjtotLofe/v0NGIZzXWXX27Q3Nn19
         2i95mu7RKVyzareubeRUAOAy6g7kFaV+3CC8ltmQYtKLvGOgS4DoP+RkkmQSKGTQNV8M
         MEy3f+GA9pYFM6KjCzU9LWBQIgIaW7ZKbIuoA7dnUpp6pdFic3jCuQmuUxAx9ufuy+T8
         HEHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=bCN0nJmu;
       spf=pass (google.com: domain of liuzhengyuang521@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=liuzhengyuang521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4e+4MvwIzqkSBZonCp6DKsnjGXCM5TEBxXVkDOGmWpo=;
        b=nVQ5M9UuAnjp9XEpGAT81kjCcBifzl/LioI/7wbN5UCQZhlclWnXb96M6GJjUVESI4
         988J+K4qCrnOQ60HSRRstshCS+jc7UJSZx3K0Ms7Ork6SRWhi41S4yxsWVZSQQy/oxQm
         QD3o+qWPTSPxltay/UllOgT737RTPSmPPjW8VZU5rCF4iZwqeTDXSS70x24Px2p2yry5
         7HJme5QwnujPR8t0tbihIE2tvrcB0qvTf8TUsh6cBMxWPVKBvxkKR3Q8WOJyb0GmxFm5
         Etod1e1zjH+QOHi2zkVDA8MqyU23zGsxbZKYNyAhdD7cQpmUx/5OFtKIw5PUCtdKNK+V
         AMlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4e+4MvwIzqkSBZonCp6DKsnjGXCM5TEBxXVkDOGmWpo=;
        b=VZ8BZxqMGCQmsx6rK7viOb3kRnTKJfvGLWOwW30+QbvDSXCP6hBtW3GJT8rCEywJNE
         er5nBd5e0rHOsGTWxb2Pas8Z4AG2CeIrPRxPHJdYUFWdubwi2tqarX7E7PTwQhwesNVd
         q8zanDt31apoRcN7OczOTk+KQoHt2eHPEHpzeuivujtoNEgOaH39tDwUP9SB6WlQMKXx
         KvMIc29g5kwdS6iM+NHRHjsd/KCw6lSo2PO5x3XzuEIKWmthFw8/DD8Vitqg6frnESxJ
         SP7xxTjbCqBFc1IdgLdmNKWFTjrzrZslT4n6hY/AMYtommv7wWy6N9ZA5mALRYWblkHC
         go/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4e+4MvwIzqkSBZonCp6DKsnjGXCM5TEBxXVkDOGmWpo=;
        b=yh1VRUgi9AbTNmzbolTwkTqJ/OgqhBoQ4O2GZpEYj+Yni3rZH6IDdD7I4BH/F2h9tZ
         z0g2wzowGaDHJFzqo2a8k1PBJje+ATuddxvcJzkufMXMv71n8YzwPEz1BOWsYRnmkb+g
         yX3fiXZQ4X3D+CeaXV5JDMUuzXA08p47QyPLWFa7/7VbQ0hohwJ7s1u4TM8bQjr2xsVl
         iequF364cySCGNO+xD0mECokXs4y8Q1nXExgXYFnaAlu9mJ6EjB1Y3Q3OmThik6rU75C
         bRpRKaUHW6sEaRBqye/DuITKbA5G+gJPDtuD97T9i2ncRShU/BOJjR1KmY1ekKOQqdug
         NYrg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532BWFrXJ3/TzFeFYuegwoeOJ/1KqrJZkl6xCDAieUuW/mKYNoPE
	sPQZssCK7E6WFNYLT7PeJZ8=
X-Google-Smtp-Source: ABdhPJxUbZiGbxN9wOX2t9Q971k1RpB8Fe+t/AsFSxSS0nzal8mdHan1utVuhhdYuKHfQX7V1hM6zg==
X-Received: by 2002:a05:6000:1869:b0:20f:c1a4:111 with SMTP id d9-20020a056000186900b0020fc1a40111mr14671132wri.261.1653373777176;
        Mon, 23 May 2022 23:29:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:1c8f:b0:397:380f:f614 with SMTP id
 k15-20020a05600c1c8f00b00397380ff614ls629268wms.3.gmail; Mon, 23 May 2022
 23:29:34 -0700 (PDT)
X-Received: by 2002:a1c:f207:0:b0:38e:9aac:df41 with SMTP id s7-20020a1cf207000000b0038e9aacdf41mr2247093wmc.14.1653373774834;
        Mon, 23 May 2022 23:29:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1653373774; cv=none;
        d=google.com; s=arc-20160816;
        b=eDZuBsRtiY3/T+7zwu7TcNisG8lI/WwGc/nzOoz199jg2kDXFG+AHhfr2Vs0RDg5v5
         YdnJXa661CVVMEBIk5EAuiyyovIElfGko4AcIjQMisg8O+59HIOt2xPdwVZlIxiz4Wyq
         SVJG4oSWgyHYkOMtun6k0pw3DhIEtVZchHKbMlv43rMakFJfSOk9ojyrqsXZgulKZQKW
         1ggINhP//AxI9umz2uWWKHxfIvnYXnjx777qal74Uc2MEzeON/QUmtThwI9xZO+Qpfj2
         3UTbN/+xS3XzBLWzuLHTTCk6zcnqOpq9+eWrS5HdyXAMWNxH7J4AiLmFbhsnBtg0K2xh
         4T2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v0KfzzJTrDnu9+V7St5lQ99gi7CdINuYwUWUnVmQOYI=;
        b=jnCEL+Nh2MGIBAHeqQzEVLIBwCxKZbkBJVCeWM8kEf2bNsRlC7KWd/H1trK4CTM/XK
         rtG7eOBFNyTLlaDalBdsEWb8Padox5tNJAocC7yqsCsHBqiFXPhNzraPqpzU22/UQIwp
         o0Gs+eoybJPS9ko18KRgc+dwnAJdx1COoefmeVBfKNQTg73/LhF3tCKW0etSh+25a1pK
         1yY+6KPsGIf6DqWx9OzSWXyaeAL2eAt9pneqq+ZSTXMPs2PXMWL2KkutjhNee04gCOgi
         jq4SuU80qGre0PKbGCRw6YawX5erukyDsPitTFesU12JR1Ut7DujHI7H9SyPhsOgLnRi
         YcIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=bCN0nJmu;
       spf=pass (google.com: domain of liuzhengyuang521@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=liuzhengyuang521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id p6-20020a05600c358600b00393e80e70c9si69875wmq.1.2022.05.23.23.29.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 23:29:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of liuzhengyuang521@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Received: by mail-wr1-x435.google.com with SMTP id z15so366899wrg.11
        for <open-iscsi@googlegroups.com>; Mon, 23 May 2022 23:29:34 -0700 (PDT)
X-Received: by 2002:a5d:6b07:0:b0:20d:97f:ca6b with SMTP id
 v7-20020a5d6b07000000b0020d097fca6bmr21420959wrw.390.1653373774400; Mon, 23
 May 2022 23:29:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAOOPZo4uNCicVmoHa2za0=O1_XiBdtBvTuUzqBTeBc3FmDqEJw@mail.gmail.com>
 <828ac69a-fe28-0869-bc1f-7fd106dff0aa@oracle.com> <CAOOPZo4Z2x_W7i=Vbnm-SsDgj5PndLVtOz6MqRzQxW-NeBwhRg@mail.gmail.com>
 <be26ef80-c3cf-713d-2a9f-4fb73cec7e17@oracle.com> <ec8d0b97-e94a-21e1-acdb-e90a7df39b72@oracle.com>
In-Reply-To: <ec8d0b97-e94a-21e1-acdb-e90a7df39b72@oracle.com>
From: Zhengyuan Liu <liuzhengyuang521@gmail.com>
Date: Tue, 24 May 2022 14:29:22 +0800
Message-ID: <CAOOPZo58sfhqFEMvpUfnoU1ceHDpPnagMbPvDGrDXHZHq7bZLg@mail.gmail.com>
Subject: Re: Question about iscsi session block
To: Mike Christie <michael.christie@oracle.com>
Cc: linux-scsi@vger.kernel.org, open-iscsi <open-iscsi@googlegroups.com>, 
	dm-devel@redhat.com, lduncan@suse.com, leech@redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: liuzhengyuang521@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=bCN0nJmu;       spf=pass
 (google.com: domain of liuzhengyuang521@gmail.com designates
 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=liuzhengyuang521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi, Mike,

Sorry for the delayed reply since I have no  environment to check your
bellow patcheset untile recently

https://lore.kernel.org/all/20220226230435.38733-1-michael.christie@oracle.com/

After applied those series, the total time has dropped from 80s to
nearly 10s, it's a great improvement.

Thanks, again

On Sun, Feb 27, 2022 at 7:00 AM Mike Christie
<michael.christie@oracle.com> wrote:
>
> On 2/15/22 8:19 PM, michael.christie@oracle.com wrote:
> > On 2/15/22 7:28 PM, Zhengyuan Liu wrote:
> >> On Wed, Feb 16, 2022 at 12:31 AM Mike Christie
> >> <michael.christie@oracle.com> wrote:
> >>>
> >>> On 2/15/22 9:49 AM, Zhengyuan Liu wrote:
> >>>> Hi, all
> >>>>
> >>>> We have an online server which uses multipath + iscsi to attach storage
> >>>> from Storage Server. There are two NICs on the server and for each it
> >>>> carries about 20 iscsi sessions and for each session it includes about 50
> >>>>  iscsi devices (yes, there are totally about 2*20*50=2000 iscsi block devices
> >>>>  on the server). The problem is: once a NIC gets faulted, it will take too long
> >>>> (nearly 80s) for multipath to switch to another good NIC link, because it
> >>>> needs to block all iscsi devices over that faulted NIC firstly. The callstack is
> >>>>  shown below:
> >>>>
> >>>>     void iscsi_block_session(struct iscsi_cls_session *session)
> >>>>     {
> >>>>         queue_work(iscsi_eh_timer_workq, &session->block_work);
> >>>>     }
> >>>>
> >>>>  __iscsi_block_session() -> scsi_target_block() -> target_block() ->
> >>>>   device_block() ->  scsi_internal_device_block() -> scsi_stop_queue() ->
> >>>>  blk_mq_quiesce_queue()>synchronize_rcu()
> >>>>
> >>>> For all sessions and all devices, it was processed sequentially, and we have
> >>>> traced that for each synchronize_rcu() call it takes about 80ms, so
> >>>> the total cost
> >>>> is about 80s (80ms * 20 * 50). It's so long that the application can't
> >>>> tolerate and
> >>>> may interrupt service.
> >>>>
> >>>> So my question is that can we optimize the procedure to reduce the time cost on
> >>>> blocking all iscsi devices?  I'm not sure if it is a good idea to increase the
> >>>> workqueue's max_active of iscsi_eh_timer_workq to improve concurrency.
> >>>
> >>> We need a patch, so the unblock call waits/cancels/flushes the block call or
> >>> they could be running in parallel.
> >>>
> >>> I'll send a patchset later today so you can test it.
> >>
> >> I'm glad to test once you push the patchset.
> >>
> >> Thank you, Mike.
> >
> > I forgot I did this recently :)
> >
> > commit 7ce9fc5ecde0d8bd64c29baee6c5e3ce7074ec9a
> > Author: Mike Christie <michael.christie@oracle.com>
> > Date:   Tue May 25 13:18:09 2021 -0500
> >
> >     scsi: iscsi: Flush block work before unblock
> >
> >     We set the max_active iSCSI EH works to 1, so all work is going to execute
> >     in order by default. However, userspace can now override this in sysfs. If
> >     max_active > 1, we can end up with the block_work on CPU1 and
> >     iscsi_unblock_session running the unblock_work on CPU2 and the session and
> >     target/device state will end up out of sync with each other.
> >
> >     This adds a flush of the block_work in iscsi_unblock_session.
> >
> >
> > It was merged in 5.14.
>
> Hey, I found one more bug when max_active > 1. While fixing it I decided to just
> fix this so we can do the sessions recoveries in parallel and the user doesn't have
> to worry about setting max_active.
>
> I'll send a patchset and cc you.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOOPZo58sfhqFEMvpUfnoU1ceHDpPnagMbPvDGrDXHZHq7bZLg%40mail.gmail.com.
