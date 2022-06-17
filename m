Return-Path: <open-iscsi+bncBC6MFJWO34DBBEFOWCKQMGQE4IJBYLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5818F54F0CB
	for <lists+open-iscsi@lfdr.de>; Fri, 17 Jun 2022 07:54:27 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id i19-20020a056512225300b0047db7f89e9esf1842689lfu.14
        for <lists+open-iscsi@lfdr.de>; Thu, 16 Jun 2022 22:54:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655445266; cv=pass;
        d=google.com; s=arc-20160816;
        b=j9VrrxlEFe1VuotAAo+do1onqqlDqeDoAOieNBy/1pR4ACHmwXG+KWdBxscu5IZTDa
         8QEgkKx43dRV6wlamlPDhzT+fBwU2fadmPFfcXjHdMuiCIRHS4IFTnHkQP6dVLdDl/nx
         CHApoaHQ2O1WTd3M9y2Uvp29OgxYja0WAPsyDFD3AgWGKbpZOJDseob2Lt5ZCrgJTiRz
         e4m6nV5bUt5OisReD0aFueS2j2uXfpvElua9cAb0YbMNQs3nui46mKA+8zUGHkpCq1nF
         gafG7hYS/HjJmW1Cmmo3APlJ8eVg2q0HYq3sWmz8pHpln6OWsae4DoVrsHIbEnkXYA3f
         k6qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=VmlRHyGOlmWF55wzJnQRfptNoUNMp3NwOSpe1S7PglM=;
        b=s1+P48oySW8TRdwZ6Yw0PB8LfT4sVooW1iMnyEen/UvllLXNj36cq7JiwAw+DY0fQG
         Nc3X31KKk4CE/26P/JAP1szekV1mlx9fVUhiNI3xt0FPaz9cDhGeJ6Y+o2yfsAwluSdt
         VUDVNesc+OE1hFWwMuBFNeGXKieJeNC6SQG7pnepWn4UeCrXiBlV2FHIuo0bEPrZNTtg
         e7lXLYQiAMt6UPdgBvLutsE+RuDvmSlzIRJjmcUQHw8lKGTdIVBbTlhAK7HvnFkOgM3u
         KBswUfpbAd5JerMHubyaBxvH7OYhwqlAzYeYR2+mznH2duzuDvRU1KepVP05iaVnByGM
         Ss+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VmlRHyGOlmWF55wzJnQRfptNoUNMp3NwOSpe1S7PglM=;
        b=AJfQWJhVGHJJQrLb8Tj009snDU0R6EaqT8L/nbiJ6/brc8J+nds/Aa5VU3VnQf/F9I
         NMFnAhDvnSdiF6cOZKYN1NAs1ampe3dzP+p6cO3V1ywsSTBz6xQSaLzgMSoctB4AqLxP
         VE433F5N9C9l6ZZEiZpRNWARXML1fg6o63tq8AZ6osNs9I30Tb8wgvGYI6J61IZLe+36
         o11FZ8wMSP6jNKwK5L0RGXXBUSJfTMdoazDEnWWJvget7Jp3kbVOVeaQTyeKGibKU1mj
         pWwzrqEgKjXGunYfwGBaWZGoKyj7Cgp0lAjXHHkjF0ylBzpKbjB67dwiVUfqCP1iydzx
         K5Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VmlRHyGOlmWF55wzJnQRfptNoUNMp3NwOSpe1S7PglM=;
        b=mkh1uxtNe5n7t0IkVfN5wmRWAV8dNyOKxewgSiw8xPUIEKOOi3mtPoiG2MCBL4Iwcz
         4j3HGs4HC4jRLVqo5tvmqtKaW6TJvM4iwIY3RieHXr8WwN+l7pWgIDQ5cMWv2ktdu5HB
         h/ziOTgULIbt8KOYYMYDd9ihY618WBpbogAMPPqb+Tb/x51gHIHM4YDsxwl/AcZzxT4w
         ikw2ZqKL88HYW8kzw8AfSPkXtRDzUge1xxK1gwazGNj9cEUOZlMN5Dbw6XVK6I1uj6+Z
         lSEXZM2ECFtp7vb16xZDW6I4HLnLySTqZmrVY3Sp+FjbSbrLvQOPDW+1uc3Xb849eibM
         5klw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AJIora+g/++5B6D0AWvLECmS5pTf4nrbHOiR8LuQQ3yj4f80Xyb/fWvi
	YdMLVd8Fu2oEhLjKvROI2tA=
X-Google-Smtp-Source: AGRyM1vZc9jR9NC0B6CYF+TG/UPEREJAUP2fgPnlclB8RbsC4vhevT1pAw32A7+M9w86R2kw7DBIRg==
X-Received: by 2002:a05:6512:33c9:b0:47f:3f2f:5c28 with SMTP id d9-20020a05651233c900b0047f3f2f5c28mr4628421lfg.675.1655445266655;
        Thu, 16 Jun 2022 22:54:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:2509:b0:47f:556d:cdc3 with SMTP id
 be9-20020a056512250900b0047f556dcdc3ls208498lfb.0.gmail; Thu, 16 Jun 2022
 22:54:23 -0700 (PDT)
X-Received: by 2002:a05:6512:32c1:b0:479:33ba:4680 with SMTP id f1-20020a05651232c100b0047933ba4680mr4612347lfg.535.1655445263549;
        Thu, 16 Jun 2022 22:54:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655445263; cv=none;
        d=google.com; s=arc-20160816;
        b=i9RWB5X9i0LGpXRoG77NqM8/n1gjuV5M3RgQ7I6ts8/WijptFZ+qFEGqA23KzVN7D5
         FbQ9zI6gRLIWeOTky0quNBMgq6xXuh69j+ESueUp8ytJ4avoirQMiUsLgyjk3gj+MFsJ
         fInaQd0457o6msdltPU/tQnbSjQ6FNxyQDsHKfbf7baabF8fEaFe+OQJ03ue/Hs8GVXQ
         9c+vBQf0dnrdreFvxVrt14itmsC9mpSId06506YMvpzKF+TNG/GRslaFLOJajfsAjQYM
         yZm2JCmFg7IRYIv6oOEbgqP38UEI2hJLSERSVQ1S2qgIxWO4AGFm4JWVc4XO1/9fPy84
         kUSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=4wrdiVs+mwKDGuJCWcvQMlUtCwXQvIkgR4mEmHSfh7A=;
        b=DmdLs7cxpT3EcibpewSgVigFJrC8n/C4aMJU/n7807m8+WSIbTKJmouF3NP67MbUUA
         /wz9oiYRLkSQFKGA7gIb1kJdGD/pZpcdAj1AYlfb1SDNQkXe9/CVuPywMe9id3PGmuvy
         XsDbg7aloQWkO5SedlxIkCnR4i25s5kbaGva882IzImiaT+o+JeUUT2Iu+W6sXWS9Qqn
         C3ojSaReD6AcTOLkGVbO6mxB6itGev8HafWGRJNign2ToMKRjiCuDHyoE9fwWnbDka6T
         Ja8ODLr42QdxF+Vy+DvaiViN9xHEWE1eg4JzWoNoe6Ed/IR5aweO1AuuYrUmgXxUuUjl
         TqgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e7a])
        by gmr-mx.google.com with ESMTPS id g27-20020a0565123b9b00b004785b6eac92si147668lfv.7.2022.06.16.22.54.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jun 2022 22:54:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e7a;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 7C5B36000053
	for <open-iscsi@googlegroups.com>; Fri, 17 Jun 2022 07:54:22 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id 50CB6600004E
	for <open-iscsi@googlegroups.com>; Fri, 17 Jun 2022 07:54:22 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Fri, 17 Jun 2022 07:54:22 +0200
Message-Id: <62AC170C020000A10004B106@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.4.0
Date: Fri, 17 Jun 2022 07:54:20 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Cc: "Chris Leech" <cleech@redhat.com>,"Lee Duncan" <lduncan@suse.com>,
 <linux-scsi@vger.kernel.org>, <d.bogdanov@yadro.com>,
 <k.shelekhin@yadro.com>, <linux@yadro.com>
Subject: Antw: [EXT] Re: [PATCH] scsi: iscsi: prefer xmit of DataOut
 before new cmd
References: <20220607131953.11584-1-d.bogdanov@yadro.com>
 <237bed01-819a-55be-5163-274fac3b61e6@oracle.com>
 <CAFU8FUgwMX_d85OG+qC+qTX-NpFiSVkwBtradzAmeJW-3PCmEQ@mail.gmail.com>
In-Reply-To: <CAFU8FUgwMX_d85OG+qC+qTX-NpFiSVkwBtradzAmeJW-3PCmEQ@mail.gmail.com>
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

>>> Adam Hutchinson <ajhutchin@gmail.com> schrieb am 15.06.2022 um 20:57 in
Nachricht
<CAFU8FUgwMX_d85OG+qC+qTX-NpFiSVkwBtradzAmeJW-3PCmEQ@mail.gmail.com>:
> Is there any reason not to use time as an indicator that pending R2Ts
> need to be processed?  Could R2Ts be tagged with a timestamp when
> received and only given priority over new commands if the age of the
> R2T at the head exceeds some configurable limit? This would guarantee
> R2T will eventually be serviced even if the block layer doesn't reduce
> the submission rate of new commands, it wouldn't remove the
> performance benefits of the current algorithm which gives priority to
> new commands and it would be a relatively simple solution.  A
> threshold of 0 could indicate that R2Ts should always be given
> priority over new commands. Just a thought..

I had similar thought comparing SCSI command scheduling with process scheduling
real-time scheduling can cause starvation when newer requests are postponed indefinitely,
while the classic scheduler increases the chance of longer-waiting tasks to be scheduled next.
In any case that would require some sorting of the queue (or searching for a maximum/minimum in the requests which is equivalent).

Regards,
Ulrich


> 
> Regards,
> Adam
> 
> On Wed, Jun 15, 2022 at 11:37 AM Mike Christie
> <michael.christie@oracle.com> wrote:
>>
>> On 6/7/22 8:19 AM, Dmitry Bogdanov wrote:
>> > In function iscsi_data_xmit (TX worker) there is walking through the
>> > queue of new SCSI commands that is replenished in parallell. And only
>> > after that queue got emptied the function will start sending pending
>> > DataOut PDUs. That lead to DataOut timer time out on target side and
>> > to connection reinstatment.
>> >
>> > This patch swaps walking through the new commands queue and the pending
>> > DataOut queue. To make a preference to ongoing commands over new ones.
>> >
>> > Reviewed-by: Konstantin Shelekhin <k.shelekhin@yadro.com>
>> > Signed-off-by: Dmitry Bogdanov <d.bogdanov@yadro.com>
>>
>> Let's do this patch. I've tried so many combos of implementations and
>> they all have different perf gains or losses with different workloads.
>> I've already been going back and forth with myself for over a year
>> (the link for my patch in the other mail was version N) and I don't
>> think a common solution is going to happen.
>>
>> You patch fixes the bug, and I've found a workaround for my issue
>> where I tweak the queue depth, so I think we will be ok.
>>
>> Reviewed-by: Mike Christie <michael.christie@oracle.com>
>>
>> --
>> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
>> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/237bed01-819a-55be-5163-274fac3b 
> 61e6%40oracle.com.
> 
> 
> 
> -- 
> "Things turn out best for the people who make the best out of the way
> things turn out." - Art Linkletter
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/CAFU8FUgwMX_d85OG%2BqC%2BqTX-NpF 
> iSVkwBtradzAmeJW-3PCmEQ%40mail.gmail.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/62AC170C020000A10004B106%40gwsmtp.uni-regensburg.de.
