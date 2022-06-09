Return-Path: <open-iscsi+bncBC6MFJWO34DBBH5TQ2KQMGQER46UGTY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id E701A544455
	for <lists+open-iscsi@lfdr.de>; Thu,  9 Jun 2022 08:56:33 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id ay1-20020a05600c1e0100b0039c3a3fc6a4sf8028309wmb.4
        for <lists+open-iscsi@lfdr.de>; Wed, 08 Jun 2022 23:56:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654757793; cv=pass;
        d=google.com; s=arc-20160816;
        b=s4F2hvisM5Heho8tOsabiO46ga3qpvTiNusgvlKr5tcaXVQr/cCu/tDi7Naj6RVc3c
         g8sg9VW07MynGU9STa9C4g2JxHQnONajazOcQ+k0i+fYcnsrMjEGns5WYGjExdOWKmeC
         dElf8jmeafoohDECWAmYlTjiX4VPYIy+fCSfOEaxzFYazMyxX70Y28S1RNsepkW1AHdp
         erwGVDy5IAjlSwl4VDxmwif4oDxfbCC8kEdParYvk/FVy4WuT6EzooRMzpziow0Q4rNp
         jOxXg+dSdUROPeA4JhAKMn4YD1CcJ7hC3+IS12cJe0igyRNcEkuurJWjpGR2752JR6dg
         QA+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=tZfa0On4iQ2hUkAZBnWMX1SH7A8ute2RjpUEngUYrZM=;
        b=Elz0Cz9Fb87WPhwKoVuPWcq/B8t7t6RaGQiDAjzhKLsu5OMGCAkJdS+Fnk17HiAhlP
         4073Uy0g98Ntdyhm2yyLzzN95gUxOsTd5D0JSA3ubctiCdTqmy5frsejNfgateBboU9d
         hrsXAvikAJkUSbxKQzk77rOWgJ84l4fx9y1jzIJS0/I1V5Mg2svz8X9o5fDsvHVsMwif
         ihTqNpMvzpmkwMLIWbVKdt+hEhrSDPpgSRaz6JoXoJCsjICHvuGzm0veo9p8Tixqbmz1
         L+LsXqgnIo2Wfl7/mVL2Z5QoQAM3Js33kXgGbU1NMFPLVa5B0vY5wbHQl4gqLxuLrqTo
         xfhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tZfa0On4iQ2hUkAZBnWMX1SH7A8ute2RjpUEngUYrZM=;
        b=Lud399HemzKhG3YhTR0QbE9Fg8EqUE8UF+WYeTFt3x2ES5wnZvHgpoNomjP83jAG3U
         LTFAkA/2w4SzeEQBA3PWgqhaQm0X7jCkFXPPD623eNY04iqtLDBOc57SC7lBFiJaThTy
         0sNVp3oxwLY0ouljA/qdbl0c1ZV4MihOjj6H+MCyAzDNhlXLYZgJrt664esT64ss83zU
         alR4/A8dWuk7HSSSYzzD9tGg5oRSFM8aeDaMuGRgQx3SrUYlJUSj+myhZKjoklEXn4Zx
         XJrKj0MOJ3foIrq2r5TUN94klTTGYCZtNlWSA9ulRTvidNORCgndYXAMoE1kXE1x7mSt
         p6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tZfa0On4iQ2hUkAZBnWMX1SH7A8ute2RjpUEngUYrZM=;
        b=VftpdLk4SP7zS4D/nYbmM1s+0IxSBgoXD+0WTwyI1bjYx8ByFI561JiJsfue2MW7Y6
         g70o/M698lI3IfV7fz+wOyYk2hnEyrYGSGhFFIMXXKLp+c6wn5Lr3ikWVlBDIiBtnrpM
         Nw/GT0pRM0AQx6fFHhYL7K6uuZ+ZBccc02xIYzcCJviqv9BUkh0qR2ov1Kzuw5lUaIN9
         Vz2PilZcjXTC+OOvUOwvw9GWWfrrxDa37ey6c616A0xFHDLKpHXjIMu8M3ep9rodKbjH
         2WhQX28Wy3Z6obe/jxrNrLUBawrys53NZFcAG/0WpNt3Fo+jx3pUQv7MaI8ERzoyyXl0
         MQHQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531He/3JBNr2OKcMW/pa27sn8Nj+oz5zjP09/ZHoh7bkZMVrgjUd
	/putHInGd+vqPaWtI8Nh9gA=
X-Google-Smtp-Source: ABdhPJwZzQ3OmQfZKEAAQ4EREu5zkxkjsNE/FKESx/oKF4FIqZaPfxHMnD36Ww6XqPzBBQde5jK9FQ==
X-Received: by 2002:a5d:4351:0:b0:20c:f52c:f869 with SMTP id u17-20020a5d4351000000b0020cf52cf869mr37930477wrr.516.1654757793375;
        Wed, 08 Jun 2022 23:56:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:1887:b0:218:5c3b:1a23 with SMTP id
 a7-20020a056000188700b002185c3b1a23ls1703328wri.0.gmail; Wed, 08 Jun 2022
 23:56:30 -0700 (PDT)
X-Received: by 2002:a5d:498f:0:b0:215:4d13:477e with SMTP id r15-20020a5d498f000000b002154d13477emr28993164wrq.155.1654757790694;
        Wed, 08 Jun 2022 23:56:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1654757790; cv=none;
        d=google.com; s=arc-20160816;
        b=Vvmu1g5W2jeafN24IdJaDhfdfZCeZdjxvkJYjUftDl+lilTLZvsWMKdEvb+pPhL9gO
         iG1ei7ip0aY9eugSV7sQdoNux3YpqYQsq2ZXyzrjonZiHtFfnPNrFuyzjqzqKvWpbtCj
         TKyEwcj0H6aJFkXFVyY1X/7jL3NQzJ57vDB2l8xpQKKc6cGhrPWtcLRsmpFMXxHlcvws
         sRa59CXgoqhWbFKZ1HQm4l6VThZkW5Uxo5yDYHJJ+2Ips+TksNLDdTvbb2zbZ9vZPqvk
         InEoDhZJ2Eql/2+THN7dJSMgE8S4aYkovit0iz0NV8aYYEbxzcy7Bwr2uQ91mEwCllE5
         X8gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=Q5Q4tzQAbndJuyRh+CdO46xMJIxllXiWOEQVL+KT2SE=;
        b=rhw0QOd2CH5vskLYD5D8Jxeac9t6gjKooUKLcHWO4YnLFsIbX+RUpALd7PQHtVNQ4E
         KxY/BgCI2LApC5iE5PbRBULlEadkbPUPmsi3a64KvjfZmF70KXbbZOiCi77vHzbsTmWp
         5O+kwN6tDbf4rtQttYIDzr9HPDpD3Lc3I7BY+uWocQDiJ6qPX4UTsrHCvTVfRtJyNcg6
         JTVqGkOFTaYEsuzxHKqre9EcqW4CqvPCUpGKDN2ukywFHmwhKQOAeu8b86MzApWohK3a
         n+CQSsLRlGzS9GbajFF+pTJmQyio5in5OwPfbVtuSX5KUzgBZqITaUz400DNYlURH5hi
         XDow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e7a])
        by gmr-mx.google.com with ESMTPS id j6-20020a5d4526000000b0020c9eedfe67si833039wra.3.2022.06.08.23.56.30
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jun 2022 23:56:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e7a;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 00CB76000050
	for <open-iscsi@googlegroups.com>; Thu,  9 Jun 2022 08:56:30 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id 1FD416000048
	for <open-iscsi@googlegroups.com>; Thu,  9 Jun 2022 08:56:29 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 09 Jun 2022 08:56:29 +0200
Message-Id: <62A1999B020000A10004AC3F@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.4.0
Date: Thu, 09 Jun 2022 08:56:27 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "Chris Leech" <cleech@redhat.com>,"Lee Duncan" <lduncan@suse.com>,
 <d.bogdanov@yadro.com>
Cc: "open-iscsi" <open-iscsi@googlegroups.com>,
 <linux-scsi@vger.kernel.org>,<k.shelekhin@yadro.com>,
 <linux@yadro.com>
Subject: Antw: [EXT] Re: [PATCH] scsi: iscsi: prefer xmit of DataOut
 before new cmd
References: <20220607131953.11584-1-d.bogdanov@yadro.com>
 <769c3acb-b515-7fd8-2450-4b6206436fde@oracle.com>
 <6a58acb4-e29e-e8c7-d85c-fe474670dad7@oracle.com>
 <e5c2ab5b4de8428495efe85865980133@yadro.com>
 <48af6f5f-c3b6-ac65-836d-518153ab2dd5@oracle.com>
In-Reply-To: <48af6f5f-c3b6-ac65-836d-518153ab2dd5@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Mike Christie <michael.christie@oracle.com> schrieb am 08.06.2022 um 17:36 in
Nachricht <48af6f5f-c3b6-ac65-836d-518153ab2dd5@oracle.com>:
> On 6/8/22 9:16 AM, Dmitriy Bogdanov wrote:
>> Hi Mike,
>> 
>>> On 6/7/22 10:55 AM, Mike Christie wrote:
>>>> On 6/7/22 8:19 AM, Dmitry Bogdanov wrote:
>>>>> In function iscsi_data_xmit (TX worker) there is walking through the
>>>>> queue of new SCSI commands that is replenished in parallell. And only
>>>>> after that queue got emptied the function will start sending pending
>>>>> DataOut PDUs. That lead to DataOut timer time out on target side and
>>>>> to connection reinstatment.
>>>>>
>>>>> This patch swaps walking through the new commands queue and the pending
>>>>> DataOut queue. To make a preference to ongoing commands over new ones.
>>>>>
>>>>
>>>> ...
>>>>
>>>>>              task = list_entry(conn->cmdqueue.next, struct iscsi_task,
>>>>> @@ -1594,28 +1616,10 @@ static int iscsi_data_xmit(struct iscsi_conn *conn)
>>>>>               */
>>>>>              if (!list_empty(&conn->mgmtqueue))
>>>>>                      goto check_mgmt;
>>>>> +            if (!list_empty(&conn->requeue))
>>>>> +                    goto check_requeue;
>>>>
>>>>
>>>>
>>>> Hey, I've been posting a similar patch:
>>>>
>>>> 
> https://urldefense.com/v3/__https://www.spinics.net/lists/linux-scsi/msg15693 
> 9.html__;!!ACWV5N9M2RV99hQ!LHLghPLuyBZadpsGme03-HBoowa8sNiZYMKxKoz5E_BNu-M9-B
> iuNV_JS9kFxhnumNfhrxuR7qVdIaOH5X7iTfMO$ 
>>>>
>>>> A problem I hit is a possible pref regression so I tried to allow
>>>> us to start up a burst of cmds in parallel. It's pretty simple where
>>>> we allow up to a queue's worth of cmds to start. It doesn't try to
>>>> check that all cmds are from the same queue or anything fancy to try
>>>> and keep the code simple. Mostly just assuming users might try to bunch
>>>> cmds together during submission or they might hit the queue plugging
>>>> code.
>>>>
>>>> What do you think?
>>>
>>> Oh yeah, what about a modparam batch_limit? It's between 0 and cmd_per_lun.
>>> 0 would check after every transmission like above.
>> 
>>  Did you really face with a perf regression? I could not imagine how it is
>> possible.
>> DataOut PDU contains a data too, so a throughput performance cannot be
>> decreased by sending DataOut PDUs.
> 
> 
> We can agree that queue plugging and batching improves throughput right?

Hi!

Isn't that the classic "throughput vs. response time"? I think you cannot optimize one without affecting the other.
(I can remember discussions like "You are sending one ethernet packet for each key pressed; are you crazy?" when network admins felt worried about throughput)

> The app or block layer may try to batch commands. It could be with something
> like fio's batch args or you hit the block layer queue plugging.
> 
> With the current code we can end up sending all cmds to the target in a way
> the target can send them to the real device batched. For example, we send 
> off
> the initial N scsi command PDUs in one run of iscsi_data_xmit. The target 
> reads
> them in, and sends off N R2Ts. We are able to read N R2Ts in the same call.
> And again we are able to send the needed data for them in one call of
> iscsi_data_xmit. The target is able to read in the data and send off the
> WRITEs to the physical device in a batch.
> 
> With your patch, we can end up not batching them like the app/block layer
> intended. For example, we now call iscsi_data_xmit and in the cmdqueue loop.
> We've sent N - M scsi cmd PDUs, then see that we've got an incoming R2T to
> handle. So we goto check_requeue. We send the needed data. The target then
> starts to send the cmd to the physical device. If we have read in multiple
> R2Ts then we will continue the requeue loop. And so we might be able to send
> the data fast enough that the target can then send those commands to the
> physical device. But we've now broken up the batching the upper layers sent
> to us and we were doing before.
> 
>> 
>>  The only thing is a latency performance. But that is not an easy question.
> 
> Agree latency is important and that's why I was saying we can make it config
> option. Users can continue to try and batch their cmds and we don't break
> them. We also fix the bug in that we don't get stuck in the cmdqueue loop
> always taking in new cmds.
> 
>> IMHO, a system should strive to reduce a maximum value of the latency almost
>> without impacting of a minimum value (prefer current commands) instead of
>> to reduce a minimum value of the latency to the detriment of maximum value
>> (prefer new commands).
>> 
>>  Any preference of new commands over current ones looks like an io scheduler
> 
> I can see your point of view where you see it as preferring new cmds
> vs existing. It's probably due to my patch not hooking into commit_rqs
> and trying to figure out the batching exactly. It's more of a simple
> estimate.

Is it also about the classic "reads stall when all buffers are dirty" (reads to a fast device may time-out while writing to a slow device)?
There the solution was to limit the amount of dirty buffers, effectively leaving room for the other direction (i.e. read).
This is NOT about which SCSI commands are scheduled first; it's about lack of buffers causing a request to wait.

> 
> However, that's not what I'm talking about. I'm talking about the block
> layer / iosched has sent us these commands as a batch. We are now more
> likely to break that up.

Isn't the block-layer the correct place to "tune" that then?
E.g. Limiting "read_ahead_kb" (which can be rather large, depending on the filesystem)
Some storage systems "break up" large requests to smaller ones internally, causing an extra delay for such large requests, specifically if there is a bottleneck in the storage system.

So are we "tuning" at the right spot here?

> 
>> functionality, but on underlying layer, so to say a BUS layer.
>> I think is a matter of future investigation/development.

Regards,
Ulrich

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/62A1999B020000A10004AC3F%40gwsmtp.uni-regensburg.de.
