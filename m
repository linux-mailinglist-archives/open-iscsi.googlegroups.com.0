Return-Path: <open-iscsi+bncBC6MFJWO34DBBTUD3L6AKGQEUV4YUYA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 113C52987A7
	for <lists+open-iscsi@lfdr.de>; Mon, 26 Oct 2020 08:59:11 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id i22sf3837218edu.1
        for <lists+open-iscsi@lfdr.de>; Mon, 26 Oct 2020 00:59:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603699150; cv=pass;
        d=google.com; s=arc-20160816;
        b=MV1Ua5eeI5aJVyzOwinbtGfvdtg2o06Cf17jxWuWnr0YjSnlG5rCcELefXBUQSU6xo
         FX3ibsi3f4JUCyuEIuYWMHj1Er5+NcuVfTSPbt5gXx6Kr3n2ajq2vv3ba8b5B7nM36M9
         1bO+UL4UC5dnG9XbM1/4lPeqKLsAmLoknJBLPPxqlfHeJvpMfURePMvNAozcJxm0M33q
         K8XQ6sAYI97USEt73lrwtRTlIpTLuWXCvdL9XvjwR8C3khNU/S7wPlLGCMB6CwxWGtDF
         7FgPpEKCJ4rIni8w3KpjBoc4jYwlBQy06v814ZiswYaJ7vFFYJQcEFmh7b8qq4r6RfPi
         KJzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=Bdr1q9rUU8XJhkL3rZjyEKZE2sYhEHZk0vTOQ80JR0Q=;
        b=z6eBLSeB9Dn/kBKLVPDJ3MhU2+3PQ1eHvRrkcjEiivGPL77pDUynx3MDQAJ1+KJ9z6
         Um8u0de2jQKsVP5XiWyravHMceAOFOAm2PAmHlRxqgqaMUe2AXy9ZVttmcqRCIfsCAIv
         7KHF8c7YbVEtyCrlAKHjmA8jYhnN1RPc7LCRJ6yi5sUSUNSh4Zkr8TtMTjAA/DY0B8WA
         pmnImHqNYvf4CqRdU6tpaWMPpv+VBNxpjqBZlb5rA7az3L9zMzjWH2RC7PKTbiqQbI0t
         l+2ZNFwWmYwYFJpgc/lh08e9mT/iA6+D6gYsMZhaayTpYmnc5QqWq8HQ5kM1n+x7HccV
         usKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Bdr1q9rUU8XJhkL3rZjyEKZE2sYhEHZk0vTOQ80JR0Q=;
        b=CYLo7Qb53EoJCp1aTcXQaspUxntn24DLlH6APZ6RzU5rdUn8wFTk3aOwWmshOcABhw
         AEhvWVKB4vhNFkzPUkpKk2FJadIF0tLFEpZeHgh0vBnZ29MC4NU6jLeivyUfEZhLmxv8
         dFBvyBeu08viAhIvPCnltxggtBJNwOIWbuU1BqQE5MrgROuVO+x9lvWt2lBzCWGOyTTT
         QonlePNRpVpi5LxXkmLW5NuAQiMSrqOBbbCwltm+eYDnQ+G1rAljz7j9IGOGQHFNTzma
         Sr02tTxmacBPBezNlexL9JNbjgQohycqzO2PEdfmoilCa1URcSbNfRxwsZ9PATPuv2Wt
         pr9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bdr1q9rUU8XJhkL3rZjyEKZE2sYhEHZk0vTOQ80JR0Q=;
        b=tfE5ePgqh+WJIlbts6GSPtuE5wlqeMYDnTw5b0FKqIMe9wobfN0VNVXv5U2ZAG35t9
         mYY/7NX+yhsVux+0/JeC5ASgUyK0MjfezDTaeR6HGkLwNLEBipkg5CPtthBPmks995m0
         LvsWz34Iqs5QtJZzbmiH0zed4jPUIEg5DuXmfPD9EkQuV5bM0ehmsze2gtsmmTzMbBXg
         xza+J7Z5kBRzF+wPeA0ZF8qLp4xUlpNy2DLjvIKDzUvPDnTCe4LRK9fR6/EK55fjzisT
         o3pPf7ktW3UxUOs0QrtwBHF1V+9yo+AKWt8r9XBqyLq66Bs0TyIn4mbZQJ4rzaSwr//z
         RGKA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532Jx7u1QTAJ8COpSKbBvkuu2wTPCw1Wyy+gJYR/JZY7j7KAmOMS
	LGTt1Mlj7Q5Gh79kalGZabc=
X-Google-Smtp-Source: ABdhPJxiiAD8L0jhQo8FjiVgSlZv4GuDF8zU4ZghoJcWXi9gh1PWLlihCy2QnTRVkhddzrrTuG8SrA==
X-Received: by 2002:a17:906:714b:: with SMTP id z11mr14017088ejj.139.1603699150742;
        Mon, 26 Oct 2020 00:59:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:35d1:: with SMTP id p17ls2470740ejb.8.gmail; Mon, 26
 Oct 2020 00:59:09 -0700 (PDT)
X-Received: by 2002:a17:906:a444:: with SMTP id cb4mr15281945ejb.416.1603699149836;
        Mon, 26 Oct 2020 00:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603699149; cv=none;
        d=google.com; s=arc-20160816;
        b=V46w8BdyKFDXxg7CV84kU2gdlng+ADaGIe5TA7w+Zpc8UkKdiUlfNh5INheDI/U322
         8yAwtBb/dMjYkCGOiUPiQClEW5TIDVdiuCMyE0V6JnlSnMDbUFlDm4pIisgdnInhx4wZ
         pkSH31ggXY0Fh0AAEpyG8848w9R1py2xNd9Wfs8AItPZx54QhsQnpqSGZrjAX3qlyTNP
         HWDP8DgS4DR3H/WNeE6vJkw914pakDwj8kSwwQMIX09eBmM8sKvjvoP0QuxRne1pzuPM
         X2U6KqVy0QaCDAfMQ/FUUp2dPylkjEqMdKX1fP337xWGcF+zSCu2nTCfRAmWJnstmwLT
         lRkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=BFATHQbZj4z+SQ8APZ07zmrCIK8Yt+SAeXYkkymoAwo=;
        b=e4n6o0+WWPsuJJVhNrEs2D+hjRLLgEphbsZQskbGxvYUIy03/+08M5szavKVuCVLkG
         MfVaLDCdV50/XhMapIneB/6aMbMM9K8gI2mJ0PP5Lq9/oixCrUQZpFQVsgB/gbuEGrdT
         c/sF31gt7WX8nvZAxgo2Ni6GKGAEYKrZrwweL87WL/DQrcPhCHkilHY6PmyWlVFkz0tB
         sb/0Fv2rB0kYBUonlYTih9IAXDef5HGZDzIWOkHYUBi3mCEyKRLzoA4oFcUHttFk4aAh
         HsLy2W2aAlSW0C7G54izUmghIMdYb/raGMu39NdK2TAg3Deh8qlc0BGTf94X/bbc8NsG
         7BDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [194.94.157.149])
        by gmr-mx.google.com with ESMTPS id u2si301532edp.5.2020.10.26.00.59.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 00:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) client-ip=194.94.157.149;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 179B5600004F
	for <open-iscsi@googlegroups.com>; Mon, 26 Oct 2020 08:59:09 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id EFCA8600004E
	for <open-iscsi@googlegroups.com>; Mon, 26 Oct 2020 08:59:08 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Mon, 26 Oct 2020 08:59:08 +0100
Message-Id: <5F9681C9020000A10003C2F4@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Mon, 26 Oct 2020 08:59:05 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] Re: Slow iSCSI tape performance
References: <5e784f60-ee52-4cdf-847b-e06f50d491cbn@googlegroups.com>
 <4ad354c3-5d6a-4b1f-b978-afee5d1219aen@googlegroups.com>
In-Reply-To: <4ad354c3-5d6a-4b1f-b978-afee5d1219aen@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> The Lee-Man <leeman.duncan@gmail.com> schrieb am 25.10.2020 um 17:51 in
Nachricht <4ad354c3-5d6a-4b1f-b978-afee5d1219aen@googlegroups.com>:
> I haven't heard about disabling TUR for iSCSI tape improvement. Even if 
> true, I'm not sure how you'd do that. You'd need to modify your target IMHO 
> to always reply "ready" for TUR. But TUR is used to clear some conditions 
> at the target, if present, so not sure about the semantics of ignoring 
> TURs. Have you tried setting the streaming bit for the tape drive?
> 
> On Wednesday, October 21, 2020 at 6:43:22 AM UTC-7 david.p...@perdrix.co.uk 
> wrote:
> 
>> I've seen a report that disabling Test Unit Ready across the iSCSI link 
>> can hugely improve performance of remote tape drives.

Bit isn't it as slow _with_ iSCSI as it is _without_? My guess is that a TUR in the middle of a tape rewind will respond after the current command has completed.

>>
>> Is this something I do at the machine hosting the tape drive or at the 
>> client?
>>
>> Is it relevant to open iscsi?
>>
>> Thanks
>> David
>>
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/4ad354c3-5d6a-4b1f-b978-afee5d12 
> 19aen%40googlegroups.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5F9681C9020000A10003C2F4%40gwsmtp.uni-regensburg.de.
