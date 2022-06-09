Return-Path: <open-iscsi+bncBAABB4FQRCKQMGQEBOGDULA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE73545165
	for <lists+open-iscsi@lfdr.de>; Thu,  9 Jun 2022 17:57:38 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id k6-20020a0cd686000000b004625db7d2aasf15283933qvi.7
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Jun 2022 08:57:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654790257; cv=pass;
        d=google.com; s=arc-20160816;
        b=XomAlh9OoH2t/Bt2oT17F7JYpfA5RC8mDiycfCGrMioNtUSW37t6GuN6x9H5hg1uMN
         ++HWASvCN8OZPt9+WHKzvfPgkss1q71KumAGgXdrZRPhT9SPiZ0A2QBO5faZWBjXr/qU
         ysO7mmSXAFZyRzM23NpF057AulZb7f2hrb7hfn4ELNSpbQ3iFw3Fud5bbw6G4u/tz2Ni
         cr6vSGHJ/O89FejtyouFWsNkN24JxHin+DzrNNuz50IxPUj6UDl9ieqe4eimXQnVwtx9
         XBZjJcUuyxbxlNEZgIVjiWoOuw/ZcyE9bSFoF4UpdfVyrwyZDQw8Vdc+npimXoA7KQwG
         tWYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=VFV3JLMoS5hPMlhUxc+Qw6du15yY8rCnpodD/bijbqM=;
        b=pIId8CP4mUhnJ14BZDCra+RIDH3rZBe7rJBHqgxKEZwZOCNtQ6sRUy8iH7o2NdIibC
         ummwXPvhsBTn83ZEwQhomwD8zvPJBXUtcS8oS7vrGsud3VZK85/l9lyYVw55JNBNzU8g
         aiYzoKMlafIva7KI73U3zxluaqAN66pUdxcM5jWdDZH/EhDY6l40Md0khpvzr1uZGdwz
         ubsmA6bxWAxZ43yEPNGwvKyniNnsffx4swJsw4Za9e5D7JyrrAUMJ7RqJ/1DPZsd7R4r
         oB4i/MO5ve004aSet4YizhjZZ8nsEyHBncICj+3ITo+QLPYMBCf8Yc/W35JQ6nmcRayP
         brBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yadro.com header.s=mta-01 header.b=HuH1AW9R;
       spf=pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=yadro.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VFV3JLMoS5hPMlhUxc+Qw6du15yY8rCnpodD/bijbqM=;
        b=W7JgzgIttfEIdpcaf1omk5eAVTsDjT0EQGq4sLeK7l7oBYfBkQze6ERi/f2lKFBkgz
         7Xo4L77aJ7POryCBBHUKEXXyifZaCeEV7tNqCG/2TVoDQ/cy89dE9fTC2WjZVnyyrex5
         z44szWghbUSlih593G/maTZJnOOThU8LcG/q+Z5mUcqvU/mxNGgHYOK/4MxMxnmqLd0w
         YUpaRYK8twGAQEbc4XXyDgwVveWGUD559lpg7yJU9NRjdB7F1UU6BmtdsSKVRiZBhdyC
         Jj7xV0NvUWUGulsdrL6EF+nDRGP9rfU7XijdDHbPQj/3X4dq5ZCePtenNb2ou7LAicJd
         VR9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VFV3JLMoS5hPMlhUxc+Qw6du15yY8rCnpodD/bijbqM=;
        b=JXI2Ylu9iCjev1Du5E5DRfOrHK5ZWp5pIntK4QFEE9npv2PPbO+Ut2dvutPZjK1lMu
         jZkQWxv8DVLPj9jFuQJB+FPxVxvMEsfMQ/DfiKtgnaoS3S2Pxu2K0gt0Hassq63HUivt
         ONNv/HBAmrI9Pqr8Pmq+xZbYjHQeOwEqRsZ3gEdvI72SNsOXVmnzmkXOEL/Dc/Q4jxMX
         rCgjGeVR0Kzp2TBYWYhlf9SVc3uYsYamwi6Sx06HoIhutf5Yz4ALC98TCHOdq2dl9M4s
         T0rQFrZ5yIXvJEHOr1TGxGE0cg/VtjZbQmr/lWyXSy++4E8/pr6JsNhSq8qIOhBJzEf5
         vK9Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530s/DUhv8FZ1Fg+T5A+N1GkF8pntHbm+9Q9P4zHCktm0cK0xNKG
	gnKXI8Mtn63ATBcfCp864NU=
X-Google-Smtp-Source: ABdhPJxO7Ygj1uFGDxnrmZ+Qf/HfcUwxRaQeKYR1AwtLJB67flmzifDTLOYi2TRpwIiVcO0FP56sHA==
X-Received: by 2002:a05:622a:1c1:b0:305:15ac:f39e with SMTP id t1-20020a05622a01c100b0030515acf39emr1567402qtw.129.1654790257262;
        Thu, 09 Jun 2022 08:57:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:4918:b0:6a7:3034:878b with SMTP id
 ed24-20020a05620a491800b006a73034878bls1033776qkb.5.gmail; Thu, 09 Jun 2022
 08:57:36 -0700 (PDT)
X-Received: by 2002:a05:622a:1714:b0:2f3:e638:84a1 with SMTP id h20-20020a05622a171400b002f3e63884a1mr31080179qtk.268.1654790245039;
        Thu, 09 Jun 2022 08:57:25 -0700 (PDT)
Received: by 2002:a05:620a:1a27:b0:6a6:c4d6:384a with SMTP id af79cd13be357-6a72bd6b18fms85a;
        Thu, 9 Jun 2022 02:02:30 -0700 (PDT)
X-Received: by 2002:a05:6402:c45:b0:433:406a:6ade with SMTP id cs5-20020a0564020c4500b00433406a6ademr1765649edb.7.1654765349430;
        Thu, 09 Jun 2022 02:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1654765349; cv=none;
        d=google.com; s=arc-20160816;
        b=TvnCdGTZigRM0hSFQQ5G63p4/clYSLRnrAX5Q2m9UIw3Wf6etqokQaMobY66Wm9xje
         Oz5lKuvje6g4H1fAZjToHSupc7Pq+iIlQy4LTrJ/JT7pBtCLAyYrnJMGS0xr7vhs7+C2
         kCC+wAdJIFlNsRmvTe957CPYxfb9iT1IjtsEYhWjgaq0O8/GT65YAx3BynghxfNIK7ef
         z91Ly+aacGktN3uD/szd4wMVQ08umn1x5d7YBEwZObHrsSb8s9c5dSlHqVyj3WdAijvZ
         JDt2jkImp3e/0kc6EbU3rirISUhBaMs4KexqJQNgMxeC2ppoJ4na84Fdj5q0FYbG4MwD
         Lj6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=oPdC9kCoxwUosGUn5JX3YyOFjw9zj8JXGC+HLpBfi+o=;
        b=IhsysM078VVJwBBKmJnqO7eunSu6mfQ7YBScCXD7ntSvLRE3D3r3jhHFq4nI+K2lDO
         j2fDGEcJSy3JZ9x4XEVe9OoMIC9kSn0XGAisxjhNqiuhnMAgQoYZXWxQAiQkwraVWQIs
         lC9RaWfcv8C8HgFDmO3Rr3GCkOsFWcOmoQ2URmA5tHNxI5n/bKP98MtveFwClLspYRCq
         kjg5AKRcgC7Hj7J4UGrNjnHGuqc4jvtK/TFYX3v735utSoru6FIC4k3XnY4C9A6ujaBT
         h1JJ3PcMrMnc9RiULvwgQzLnQmsr4q3xKvItQDU/VVonI7+1JJ33kMJmyDIdpDpJxThy
         9Uww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yadro.com header.s=mta-01 header.b=HuH1AW9R;
       spf=pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=yadro.com
Received: from mta-01.yadro.com (mta-02.yadro.com. [89.207.88.252])
        by gmr-mx.google.com with ESMTPS id m7-20020aa7d347000000b0042dd1db7093si182383edr.5.2022.06.09.02.02.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jun 2022 02:02:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) client-ip=89.207.88.252;
Received: from localhost (unknown [127.0.0.1])
	by mta-01.yadro.com (Postfix) with ESMTP id B1BB142497;
	Thu,  9 Jun 2022 09:02:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
	by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aE5kN1mE9jEk; Thu,  9 Jun 2022 12:02:24 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com [172.17.10.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mta-01.yadro.com (Postfix) with ESMTPS id 2531D42486;
	Thu,  9 Jun 2022 12:02:22 +0300 (MSK)
Received: from T-Exch-05.corp.yadro.com (172.17.10.109) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Thu, 9 Jun 2022 12:02:22 +0300
Received: from T-EXCH-09.corp.yadro.com (172.17.11.59) by
 T-Exch-05.corp.yadro.com (172.17.10.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Thu, 9 Jun 2022 12:02:21 +0300
Received: from T-EXCH-09.corp.yadro.com ([fe80::d9f:e165:8a50:d450]) by
 T-EXCH-09.corp.yadro.com ([fe80::d9f:e165:8a50:d450%4]) with mapi id
 15.02.0986.022; Thu, 9 Jun 2022 12:02:21 +0300
From: Dmitriy Bogdanov <d.bogdanov@yadro.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>
CC: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>, "linux@yadro.com"
	<linux@yadro.com>, Konstantin Shelekhin <k.shelekhin@yadro.com>
Subject: RE: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Thread-Topic: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Thread-Index: AQHYenFLnkgrMqHdCEim3M4HDVs6OK1D5uuAgAAC6wCAAXQf4IAAFcyAgAFR6oA=
Date: Thu, 9 Jun 2022 09:02:20 +0000
Message-ID: <ffc1f4910d2b414c93dfa5d331436a53@yadro.com>
References: <20220607131953.11584-1-d.bogdanov@yadro.com>
 <769c3acb-b515-7fd8-2450-4b6206436fde@oracle.com>
 <6a58acb4-e29e-e8c7-d85c-fe474670dad7@oracle.com>
 <e5c2ab5b4de8428495efe85865980133@yadro.com>
 <48af6f5f-c3b6-ac65-836d-518153ab2dd5@oracle.com>
In-Reply-To: <48af6f5f-c3b6-ac65-836d-518153ab2dd5@oracle.com>
Accept-Language: ru-RU, en-US
Content-Language: ru-RU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.199.18.20]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: d.bogdanov@yadro.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yadro.com header.s=mta-01 header.b=HuH1AW9R;       spf=pass
 (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as
 permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=yadro.com
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

Hi Mike,

>>On 6/8/22 9:16 AM, Dmitriy Bogdanov wrote:
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
>>>> https://urldefense.com/v3/__https://www.spinics.net/lists/linux-scsi/msg156939.html__;!!ACWV5N9M2RV99hQ!LHLghPLuyBZadpsGme03-HBoowa8sNiZYMKxKoz5E_BNu-M9-BiuNV_JS9kFxhnumNfhrxuR7qVdIaOH5X7iTfMO$
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
>We can agree that queue plugging and batching improves throughput right?
>The app or block layer may try to batch commands. It could be with something
>like fio's batch args or you hit the block layer queue plugging.

I agree that those features 100% gives an improvement of a throughput on local
devices on serial interfaces like SATA1. Since SATA2 (Native Command Queuing)
devices can reorder incoming commmands to provide the best thoughput.
SCSI I guess has similar feature from the very beginning.
But on remote devices (iSCSI and FC) it is not 100% - initiators's command
order may be reordered by the network protocol nature itself. I mean 1PDU vs
R2T+DataOut PDUs, PDU resending due to crc errors or something like that.

>With the current code we can end up sending all cmds to the target in a way
>the target can send them to the real device batched. For example, we send off
>the initial N scsi command PDUs in one run of iscsi_data_xmit. The target reads
>them in, and sends off N R2Ts. We are able to read N R2Ts in the same call.
>And again we are able to send the needed data for them in one call of
>iscsi_data_xmit. The target is able to read in the data and send off the
>WRITEs to the physical device in a batch.
>
>With your patch, we can end up not batching them like the app/block layer
>intended. For example, we now call iscsi_data_xmit and in the cmdqueue loop.
>We've sent N - M scsi cmd PDUs, then see that we've got an incoming R2T to
>handle. So we goto check_requeue. We send the needed data. The target then
>starts to send the cmd to the physical device. If we have read in multiple
>R2Ts then we will continue the requeue loop. And so we might be able to send
>the data fast enough that the target can then send those commands to the
>physical device. But we've now broken up the batching the upper layers sent
>to us and we were doing before.

In my head everything is vice-versa :)
Current code breaks a batching by sending new commands instead of completing
the transmission of current commands that could be in its own batch.
With my patch the batches will be received (in best effort manner) on target
port in the same order as block layer sends to iSCSI layer. BTW, another target
ports may receive other commands in meantime and the real device will receive
broken batch anyway. The initiator side cannot guarantee batching on the real
device.

Lets imagine, that block layer submits two batches of big commands and then
submits single small commands, the command queue will be 
"ABCD EFGH" + "S" + "S" + "S" + "S" 
and that what will be sent out:
current code (worst case):    A1B1C1D1 E1F1G1H1 A2 S B2 S C2D2 E2 S F2 S G2H2 (breaks batch)
current code (best case):     A1B1C1D1 E1F1G1H1 SSSS A2B2C2D2 E2F2G2H2 (reorder)
current code (bug addressed): A1B1C1D1 E1F1G1H1 SS...S (connection fail)
current code (!impossible):   A1B1C1D1 E1F1G1H1 A2B2C2D2 E2F2G2H2 SSSS (inorder)
with my patch (best case):    A1B1C1D1 E1F1G1H1 A2B2C2D2 E2F2G2H2 SSSS (inorder)
with my patch (your case):    A1B1C1D1 E1 A2 F1 B2 G1H1 C2 E2 D2 F2G2H2 SSSS (still inorder)
with my patch (worst case):   A1B1C1D1 E1F1G1H1 A2 S B2 S C2D2 E2 S F2 S G2H2 (breaks batch)

My better best case (command order as block layer submits) will never happen in
the current code.
If "S" comes in parrallel, the worst cases are the same, both may break a batch
by new commands. But if "S" are already in the queue, my patch will produce
(most likely) the best case instead of the worst case.


>>  The only thing is a latency performance. But that is not an easy question.
>
>Agree latency is important and that's why I was saying we can make it config
>option. Users can continue to try and batch their cmds and we don't break
>them. We also fix the bug in that we don't get stuck in the cmdqueue loop
>always taking in new cmds.

>> IMHO, a system should strive to reduce a maximum value of the latency almost
>> without impacting of a minimum value (prefer current commands) instead of
>> to reduce a minimum value of the latency to the detriment of maximum value
>> (prefer new commands).
>>
>>  Any preference of new commands over current ones looks like an io scheduler
>
>I can see your point of view where you see it as preferring new cmds
>vs existing. It's probably due to my patch not hooking into commit_rqs
>and trying to figure out the batching exactly. It's more of a simple
>estimate.
>
>However, that's not what I'm talking about. I'm talking about the block
>layer / iosched has sent us these commands as a batch. We are now more
>likely to break that up.

No, my patch does not break a batching more than current code, instead it
decreases the probability of a break the currently sending batch by trying to
transmit in the same order as they come from block layer.

It's very complicated question - how to schedule "new vs old" commands. It's
not just a counter. Even with a counter there are a lot of questions - should
it begin from the cmdqueue loop or from iscsi_data_xmit, why it has static
limit, per LUN or not, and so on and so on.
That is a new IO scheduler on bus layer. 

>> I think is a matter of future investigation/development.
I am not against of it at all. But it should not delay a simple bugfix patch.

BR,
 Dmitry

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ffc1f4910d2b414c93dfa5d331436a53%40yadro.com.
