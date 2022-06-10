Return-Path: <open-iscsi+bncBCPN37WOREEBBEXBRSKQMGQEMI2LY4Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4BE546614
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Jun 2022 13:52:53 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id c5-20020a056512238500b0047954b68297sf6555147lfv.3
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Jun 2022 04:52:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654861972; cv=pass;
        d=google.com; s=arc-20160816;
        b=E44F9p9PXDuuskP1GzXXaUVa9UNjo63uzhf0BNV37UQ7CoF0N1x6sYTUAs4vKyNR8f
         glH22n+9tDGVYNF/brQpFOJk9XZsgUxImEVLZVUpbNw8Y752eMZfQOsjcaWZjQzcB1HK
         +eYLqdOMGm1nqPBxr14iSRdOq3vFd6x7Mpkxbtgo/DVRyAH4wyeoIhaIJusNUepnxjsT
         82ka69uNuT9lWVhC4CDcniZxCNn7Ae3FMGsBHWuI8yBrDQdkRd1lxEqOXVIWWCicxTNH
         nE7BksLZqtlcXBBYNRKnSip4B7CK4oAPWcPGRY1X7ef3LsnbtqhPeasjBWx5h9RGgW3i
         yDKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=cMGjYnguLFV0R3riqEqS2tV0lopOPCi+8i9t2BHBMBs=;
        b=X+Lobv7abGW6dG3ynl7JrysDaBcHtGS4ljiAdBaKXEgHnaK3CAfW3/0WNNqdzWqiTt
         BdofJkCrdf6HpyQalMRkKmiPrjUBxyXsn6AN6D86t6E2Eq6iQ5Tcsioh+eaie8K0VC+z
         kIi51eFnSME59mavq1CpPpoGC+HHS/k7nzPIlGkEg9VSeP5ujCReOozhCcCEHg/gYY9y
         4CQtMPVZaoW/ZpIS8xdi3TOxuOyeYojNVNG0hrtQdEZmKietCNRoJfRu1MUSyRU8g1Br
         YImmYaD054vEVDC92E/Bn/BnP1cJALxFaoHbggn8MfplZx3hxL5JARe17/A5hLw0Wc0g
         sWCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yadro.com header.s=mta-01 header.b=ojngV34Z;
       spf=pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=yadro.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cMGjYnguLFV0R3riqEqS2tV0lopOPCi+8i9t2BHBMBs=;
        b=lCKbbWdtQE07ANH/0In1nzhqcC07cQ4j9bRyo4x7iw+9UQP3TLBW9HGzRD56ZAxICA
         b7x5VRNMJ0uiM7zmYMlap8JaWwPmnz353QF+MvNXdIy5NJ8LVoo+z0dZgkRFFZX/Uwmj
         2p6G4BRIFm00syWKNm0mAKOlwiJkUTesAY3KCLEIw9r5V/QgqcfC4vISKge8XJRP017D
         x4Nofbg7U9kAQJX8jGxF+9ujGZ1+TiJEI6njPVGZU3iSwenslwCMWFP/rtt8lyUexrJw
         J8FRwtRV7Pe0XdGO4vCHCQQ/3JcTGPDB66ym+dyaRN2B29xeTxuIS7YvnU4KRjtlhFLC
         2pQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cMGjYnguLFV0R3riqEqS2tV0lopOPCi+8i9t2BHBMBs=;
        b=RRCPhsVvU0lGy4eL4OunaN+0KErFTgdQ2wVfeXSZIus5yzLAEvEDkY0UvaU19wAq3S
         hRWO+rAiIHch/blSpY4/Ry2k0dcDYEX+yG+0UW1XPDYLd5axbHqvGNvscktIklDy8/7t
         qK5wwRdVM0l+BJBjnPPDdUY/eArg2AQrxY2V0ldaSDsn5T70nJFw6X198+U+0VDk2pC3
         A1d4hOJmJU/xs4nIKq9N2zSfKz2ImeeP15/eUFvwyxSMsvHGLCLgH5stY5rrRZLF9WUh
         NEDhDbcCA+lic5Mt/b5A7qMrwqtMw/nvHU+9FVZ82gCj/PyIFfSsKD64Bvz0F9puakpJ
         V4xg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533YI9Rvd4V5xhKBRbC8vmd6QHJ9P9vqog7OkIG0UILzDL4O/6EL
	sgK/a+gzhDtAeh3loF43EGk=
X-Google-Smtp-Source: ABdhPJxYPthrxpGaltBhVEu7X0F4zteKcse5coti0UxmZTEQS5M0tYjA0/5r5WJE7lbc1Z41162ibQ==
X-Received: by 2002:a05:6512:401a:b0:479:2409:7b2a with SMTP id br26-20020a056512401a00b0047924097b2amr19694774lfb.34.1654861972514;
        Fri, 10 Jun 2022 04:52:52 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:91cc:0:b0:253:9ae0:be3b with SMTP id u12-20020a2e91cc000000b002539ae0be3bls1388050ljg.10.gmail;
 Fri, 10 Jun 2022 04:52:49 -0700 (PDT)
X-Received: by 2002:a05:651c:1796:b0:258:e209:ec79 with SMTP id bn22-20020a05651c179600b00258e209ec79mr3236228ljb.269.1654861969374;
        Fri, 10 Jun 2022 04:52:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1654861969; cv=none;
        d=google.com; s=arc-20160816;
        b=kYvg/xjL0OErVmj4NIebhgmI258hbpxLhFbKTrYCQjc5go9v0eEP09baIGT9FShYOr
         GbMWgmpyew+8Eqz04xudYH7gPZZ0jv3sCMOCfYEl1UHaNBP07XhfKPf2xzwrh1v/P6NX
         P7DRDSSp8TQdUXkNpwYuEsTKJ7iLuiNUW6ylNWw+OWDCL8c3BdV7kQ30CtiAueXsGGZJ
         TNwbhXJ2cY4ou360Uh+fecDbmNJZBk5eFMtPgfYUE67qEHMIJgmpg/seyL5y10L/2+ly
         BszJPSILYx/2R0yRA7E21gf018n7SdglQZuKrlxiBXzGLC8X4qLURLN9s++ccicO1JKP
         +Ptw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=tGCuRORBWzExnikSY849wZP1ObJpqG8YtwGnhVibC6o=;
        b=x3Un/LMw8mg/T8JS2rkjt4Ofryz+vKSLnsADk8IWpHAw+RPdQOxQeBeIZcPIMWwsDD
         ErlhUY7dsXb6HQnX+kSA1s9lMByOj215Yjwd2whVgQFrC1rpHJG053QbPEE15mkLlv9R
         djypfQhnMhE26Xf0xR0N5kpPGtUxmQKNwBMmqc5oAVoJa/lAPe5GOOQ+pP0jZMOM/jtv
         c97zs/1H1fAqllM3x65B/3YPgTa0a5WVWvju9Cm6AJTEuwhDogm7O23mrZrIwcdxhpbv
         1J6AD96TuHzRioJh4OWdgkqSnCRlAMpsb7yWB7lTs+CqAFwJTFbj8V8c5H4Ie/6ZfytW
         pQ4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yadro.com header.s=mta-01 header.b=ojngV34Z;
       spf=pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=yadro.com
Received: from mta-01.yadro.com (mta-02.yadro.com. [89.207.88.252])
        by gmr-mx.google.com with ESMTPS id 6-20020a2eb946000000b00255889ba526si683739ljs.5.2022.06.10.04.52.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jun 2022 04:52:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) client-ip=89.207.88.252;
Received: from localhost (unknown [127.0.0.1])
	by mta-01.yadro.com (Postfix) with ESMTP id 1B25E424B9;
	Fri, 10 Jun 2022 11:52:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
	by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bBmYd19yDCSW; Fri, 10 Jun 2022 14:52:45 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com [172.17.10.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mta-01.yadro.com (Postfix) with ESMTPS id 07AEF424B2;
	Fri, 10 Jun 2022 14:52:41 +0300 (MSK)
Received: from T-EXCH-10.corp.yadro.com (172.17.11.60) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Fri, 10 Jun 2022 14:52:41 +0300
Received: from T-EXCH-09.corp.yadro.com (172.17.11.59) by
 T-EXCH-10.corp.yadro.com (172.17.11.60) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Fri, 10 Jun 2022 14:52:40 +0300
Received: from T-EXCH-09.corp.yadro.com ([fe80::d9f:e165:8a50:d450]) by
 T-EXCH-09.corp.yadro.com ([fe80::d9f:e165:8a50:d450%4]) with mapi id
 15.02.0986.022; Fri, 10 Jun 2022 14:52:40 +0300
From: Dmitriy Bogdanov <d.bogdanov@yadro.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>
CC: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>, "linux@yadro.com"
	<linux@yadro.com>, Konstantin Shelekhin <k.shelekhin@yadro.com>
Subject: RE: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Thread-Topic: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Thread-Index: AQHYenFLnkgrMqHdCEim3M4HDVs6OK1D5uuAgAAC6wCAAXQf4IAAFcyAgAFR6oCAAJqUgIABIaAw
Date: Fri, 10 Jun 2022 11:52:40 +0000
Message-ID: <4d2095bc744345b9a009c50b4b6011fe@yadro.com>
References: <20220607131953.11584-1-d.bogdanov@yadro.com>
 <769c3acb-b515-7fd8-2450-4b6206436fde@oracle.com>
 <6a58acb4-e29e-e8c7-d85c-fe474670dad7@oracle.com>
 <e5c2ab5b4de8428495efe85865980133@yadro.com>
 <48af6f5f-c3b6-ac65-836d-518153ab2dd5@oracle.com>
 <ffc1f4910d2b414c93dfa5d331436a53@yadro.com>
 <d3277470-9ef0-9a1a-974d-e80250bd35ac@oracle.com>
In-Reply-To: <d3277470-9ef0-9a1a-974d-e80250bd35ac@oracle.com>
Accept-Language: ru-RU, en-US
Content-Language: ru-RU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.199.18.20]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: d.bogdanov@yadro.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yadro.com header.s=mta-01 header.b=ojngV34Z;       spf=pass
 (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as
 permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=yadro.com
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

Hi Mike,

>>>> On 6/8/22 9:16 AM, Dmitriy Bogdanov wrote:
>>>>> On 6/7/22 10:55 AM, Mike Christie wrote:
>>>>>> On 6/7/22 8:19 AM, Dmitry Bogdanov wrote:
>>>>>>> In function iscsi_data_xmit (TX worker) there is walking through the
>>>>>>> queue of new SCSI commands that is replenished in parallell. And only
>>>>>>> after that queue got emptied the function will start sending pending
>>>>>>> DataOut PDUs. That lead to DataOut timer time out on target side and
>>>>>>> to connection reinstatment.
>>>>>>>
>>>>>>> This patch swaps walking through the new commands queue and the pending
>>>>>>> DataOut queue. To make a preference to ongoing commands over new ones.
>>>>>>>
>>>>>>
>>>>>> ...
>>>>>>
>>>>>>>              task = list_entry(conn->cmdqueue.next, struct iscsi_task,
>>>>>>> @@ -1594,28 +1616,10 @@ static int iscsi_data_xmit(struct iscsi_conn *conn)
>>>>>>>               */
>>>>>>>              if (!list_empty(&conn->mgmtqueue))
>>>>>>>                      goto check_mgmt;
>>>>>>> +            if (!list_empty(&conn->requeue))
>>>>>>> +                    goto check_requeue;
>>>>>>
>>>>>>
>>>>>>
>>>>>> Hey, I've been posting a similar patch:
>>>>>>
>>>>>> https://urldefense.com/v3/__https://www.spinics.net/lists/linux-scsi/msg156939.html__;!!ACWV5N9M2RV99hQ!LHLghPLuyBZadpsGme03-HBoowa8sNiZYMKxKoz5E_BNu-M9-BiuNV_JS9kFxhnumNfhrxuR7qVdIaOH5X7iTfMO$
>>>>>>
>>>>>> A problem I hit is a possible pref regression so I tried to allow
>>>>>> us to start up a burst of cmds in parallel. It's pretty simple where
>>>>>> we allow up to a queue's worth of cmds to start. It doesn't try to
>>>>>> check that all cmds are from the same queue or anything fancy to try
>>>>>> and keep the code simple. Mostly just assuming users might try to bunch
>>>>>> cmds together during submission or they might hit the queue plugging
>>>>>> code.
>>>>>>
>>>>>> What do you think?
>>>>>
>>>>> Oh yeah, what about a modparam batch_limit? It's between 0 and cmd_per_lun.
>>>>> 0 would check after every transmission like above.
>>>>
>>>>  Did you really face with a perf regression? I could not imagine how it is
>>>> possible.
>>>> DataOut PDU contains a data too, so a throughput performance cannot be
>>>> decreased by sending DataOut PDUs.
>>>
>>>
>>> We can agree that queue plugging and batching improves throughput right?
>>> The app or block layer may try to batch commands. It could be with something
>>> like fio's batch args or you hit the block layer queue plugging.
>>
>> I agree that those features 100% gives an improvement of a throughput on local
>> devices on serial interfaces like SATA1. Since SATA2 (Native Command Queuing)
>> devices can reorder incoming commmands to provide the best thoughput.
>> SCSI I guess has similar feature from the very beginning.
>> But on remote devices (iSCSI and FC) it is not 100% - initiators's command
>> order may be reordered by the network protocol nature itself. I mean 1PDU vs
>> R2T+DataOut PDUs, PDU resending due to crc errors or something like that.
>I think we are talking about slightly different things. You are coming up with
>different possible scenarios where it doesn't work. I get them. You are correct
>for those cases. I'm not talking about those cases. I'm talking about the specific
>case I described.
>
>I'm saying we have targets where we use backends that get improved performance
>when they get batched cmds. When the network is ok, and the user's app is
>batching cmds, they come from the app down to the target's backend device as
>a batch. My concern is that with your patch we will no longer get that behavior.
>
>The reason is that the target and initiator can do:
>
>1. initiator sends scsi cmd pdu1
>2. target sends R2T
>3. initiator sees R2T and hits the goto. Sends data
>4. target reads in data. Sends cmd to block layer.
>5. initiator sends scsi cmd pdu2
>6. target sends R2T
>7. initiator reads in R2T sends data.
>8. target reads in data and sends cmd to block layer.
>
>The problem here could be between 4 and 8 the block layer has run the queue
>and sent that one cmd to the real device already because we have that extra
>delay now. So when I implemented the fix in the same way as you and I run
>iostat I would see lower aqu-sz for example.
>
>With the current code we might not have that extra delay between 4 - 8 so
>I would see:
>
>1. initiator sends scsi cmd pdu1
>2. initiator sends scsi cmd pdu2
>3. initiator sends scsi cmd pdu3
>4. target reads in all those cmd pdus
>5. target sends R2Ts for each cmd.
>6. initiator reads in all the R2Ts
>7. initiator sends data for cmd 1 - 3.
>8. target reads in data and sends cmd1 to block layer
>9. target reads in data and sends cmd2 to block layer
>10. target reads in data and sends cmd3 to block layer
>11. block layer/iosched hits unplug limit and then sends
>those cmds to the real device.
>
>In this case the time between 8 - 9 is small since we are just reading
>from the socket, building structs and passing the cmds down to the block
>layer. Here when I'm watching the backend device with iostat I see higher
>qu-sz values.
>
>Note that you might not be seeing this with LIO for example because we
>plug/unplug on every cmd.
>
>When the network is congested, the lun is shared, we are doing retries,
>machine gets bogged donw, etc then yeah, we might not get the above behavior.
>The user knows this is and it's expected. It's not expected that they just
>update the kernel and they get a perf drop in the normal case.
>
>How do we not give these users a regression while fixing the bug?

Now I've got your concern. Due to change of pattern of DataOuts in the some
specific case there will be a throughput regression.
I agree that this should be addressed in my patch.

>>
>>> With the current code we can end up sending all cmds to the target in a way
>>> the target can send them to the real device batched. For example, we send off
>>> the initial N scsi command PDUs in one run of iscsi_data_xmit. The target reads
>>> them in, and sends off N R2Ts. We are able to read N R2Ts in the same call.
>>> And again we are able to send the needed data for them in one call of
>>> iscsi_data_xmit. The target is able to read in the data and send off the
>>> WRITEs to the physical device in a batch.
>>>
>>> With your patch, we can end up not batching them like the app/block layer
>>> intended. For example, we now call iscsi_data_xmit and in the cmdqueue loop.
>>> We've sent N - M scsi cmd PDUs, then see that we've got an incoming R2T to
>>> handle. So we goto check_requeue. We send the needed data. The target then
>>> starts to send the cmd to the physical device. If we have read in multiple
>>> R2Ts then we will continue the requeue loop. And so we might be able to send
>>> the data fast enough that the target can then send those commands to the
>>> physical device. But we've now broken up the batching the upper layers sent
>>> to us and we were doing before.
>>
>> In my head everything is vice-versa :)
>
>:)
>
>> Current code breaks a batching by sending new commands instead of completing
>> the transmission of current commands that could be in its own batch.
>
>We are not talking about the same thing. I'm talking about specifically what
>a user would do today to boost perf for their app where they have a single app
>using the LUN. Single LUN per session. App uses something like fio's batch
>args. You have it send down 32 cmds. When those complete, it sends down 32 again.
>We are not getting a constant stream or mix of cmds from different sources.
>
>We are not talking about multiple users using the same LUN or even same session.
>
>
>> With my patch the batches will be received (in best effort manner) on target
>> port in the same order as block layer sends to iSCSI layer. BTW, another target
>> ports may receive other commands in meantime and the real device will receive
>> broken batch anyway. The initiator side cannot guarantee batching on the real
>> device.
>
>The user does this. The user has set things up so they are using the device for
>their one app. The app is sending down these commands as a batch. No other
>initiators are using the device.
>
>It's *not* say a shared LUN example like we have N VMs on a LUN all doing their
>own IO. The user does not expect the same perf for that type of case we they do
>when they have specifically tuned their app and device use like I mention.
>
>>
>> Lets imagine, that block layer submits two batches of big commands and then
>> submits single small commands, the command queue will be
>
>That's not what I'm talking about. We are not getting a mix like this.
>
>
>> "ABCD EFGH" + "S" + "S" + "S" + "S"
>> and that what will be sent out:
>> current code (worst case):    A1B1C1D1 E1F1G1H1 A2 S B2 S C2D2 E2 S F2 S G2H2 (breaks batch)
>> current code (best case):     A1B1C1D1 E1F1G1H1 SSSS A2B2C2D2 E2F2G2H2 (reorder)
>> current code (bug addressed): A1B1C1D1 E1F1G1H1 SS...S (connection fail)
>> current code (!impossible):   A1B1C1D1 E1F1G1H1 A2B2C2D2 E2F2G2H2 SSSS (inorder)
>> with my patch (best case):    A1B1C1D1 E1F1G1H1 A2B2C2D2 E2F2G2H2 SSSS (inorder)
>> with my patch (your case):    A1B1C1D1 E1 A2 F1 B2 G1H1 C2 E2 D2 F2G2H2 SSSS (still inorder)
>> with my patch (worst case):   A1B1C1D1 E1F1G1H1 A2 S B2 S C2D2 E2 S F2 S G2H2 (breaks batch)
>>
>> My better best case (command order as block layer submits) will never happen in
>> the current code.
>> If "S" comes in parrallel, the worst cases are the same, both may break a batch
>> by new commands. But if "S" are already in the queue, my patch will produce
>> (most likely) the best case instead of the worst case.
>>
>>
>>>>  The only thing is a latency performance. But that is not an easy question.
>>>
>>> Agree latency is important and that's why I was saying we can make it config
>>> option. Users can continue to try and batch their cmds and we don't break
>>> them. We also fix the bug in that we don't get stuck in the cmdqueue loop
>>> always taking in new cmds.
>>
>>>> IMHO, a system should strive to reduce a maximum value of the latency almost
>>>> without impacting of a minimum value (prefer current commands) instead of
>>>> to reduce a minimum value of the latency to the detriment of maximum value
>>>> (prefer new commands).
>>>>
>>>>  Any preference of new commands over current ones looks like an io scheduler
>>>
>>> I can see your point of view where you see it as preferring new cmds
>>> vs existing. It's probably due to my patch not hooking into commit_rqs
>>> and trying to figure out the batching exactly. It's more of a simple
>>> estimate.
>>>
>>> However, that's not what I'm talking about. I'm talking about the block
>>> layer / iosched has sent us these commands as a batch. We are now more
>>> likely to break that up.
>>
>> No, my patch does not break a batching more than current code, instead it
>> decreases the probability of a break the currently sending batch by trying to
>> transmit in the same order as they come from block layer.
>>
>> It's very complicated question - how to schedule "new vs old" commands. It's
>> not just a counter. Even with a counter there are a lot of questions - should
>> it begin from the cmdqueue loop or from iscsi_data_xmit, why it has static
>> limit, per LUN or not, and so on and so on.
>
>What about a compromise? Instead of doing while (!list_empty). We switch it
>to list_for_each and move the requeue handling to infront of the cmdqueue
>handling.

That will not help because libiscsi is not adapted for batching, it calls
iscsi_data_xmit for each queued command. And the few first commands of a batch will
be the only command in the cmdqueue list and be followed by its DatOut just
because of DataOut will be sent first in next iscsi_data_xmit call.
Probably you saw a regression exactly because of that.

>We will know that the cmds on the cmdqueue at the time iscsi_data_xmit is run
>were sent to us from the block layer at the same time so I get what I need. The
>bug is fixed.

I think the better solution will be to support commit_rqs callback and call
iscsi_data_xmit there. Then cmdqueue list will have all commands from a batch.
Then I should add some check whether the current command is from the same batch
as the previous to make a decision to go to sending DataOuts.

Sounds good?

BR,
 Dmitry.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4d2095bc744345b9a009c50b4b6011fe%40yadro.com.
