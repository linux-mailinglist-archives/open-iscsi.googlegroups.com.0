Return-Path: <open-iscsi+bncBC6MFJWO34DBB6XKQOJQMGQEU5PRMMQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8DC509735
	for <lists+open-iscsi@lfdr.de>; Thu, 21 Apr 2022 08:11:09 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id a24-20020a2e7f18000000b0024b1ff3b41dsf1190677ljd.14
        for <lists+open-iscsi@lfdr.de>; Wed, 20 Apr 2022 23:11:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650521469; cv=pass;
        d=google.com; s=arc-20160816;
        b=lV8m+xdvS/LP0mHmM0716gAIQ8STFx6JZbz9h3CBwFr1YtDRHwTUfgjKQ4zm5+Jcq1
         oND0ZRLj2b5t4UHhqh9JMAofKXOM8HeMdhPu5XpU7x3tkAGI6ogGp2+bYwC7w9WI6mMC
         +/SvbzDswOZMSc2icGrGbnrUBrT5pfRpP3thnUVjqG5Z9LT5WKBx9uEfHOca+MIdD4yh
         g4Lr3gmBUDg6spSgxOYwsT3bhz2MQlDxonmoPo8AT45qvHfevEnM2Hc6JBjfMXUqVUyi
         GD6IIr5NaJzttWIeJliQgv8LZxnMzatjgPe3gKyKxTtyoETnTqgrq4OX7F7H4oUjnqqX
         ePQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=JZXE+LOk8oLHP0tL7/E+U99CpD/CaWrtqoVhBNcjMoo=;
        b=cP4gKmoHVBc+/D5y+oCoGzPSclqidyIpaVshRRf3SVKaYAbzdbjFFBJSAZkLCkvSFB
         IpsC0af4Dm7URyKDFP9x04BL0QyVw9Db832gJArtuXm5rPEos40pzhiVsig/mT5XwaCi
         JNqKhSromSeAN/PUfJbYxl1xeMh36riO1mV/qRotzj3xgCEv8MgYg/b6aPnIJvR5mt8r
         X4t7W0vATBQzoQiM36sv79SDOtS3pdNWyiJ+rZCsnDVe8wMKR2BD2MQ8ZVKVw51OWqjF
         4aRg4sgZms0szxS4Ibc8lDeroUuGi9WAON4WHXskTgk23egy1kcjBDBjWAMvk7PALENp
         AtQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JZXE+LOk8oLHP0tL7/E+U99CpD/CaWrtqoVhBNcjMoo=;
        b=tC5PwVKcJOHK00iCaXYaBhpLH1YTAT8s/rP2RL1JiGV3vmHM6dRnWVO1F7ydhQcRWl
         yXEliSyw5z/4qP/DtuWbGdJqWXmkewBNi7eSrjWFuoD5UBbksqSA/gY6/dPKd1M6TfhH
         B1P3VI+rXLDjByGbuAj0noj5rWcY8IqYCl/3b6YuVzufU3kNkhhpBVeoiPB/qkeipLqr
         Gf5spqC/7zaLSzGohLr2ck731k79s1kXc0VPrXn8/gI9vseq2qljQAFwgSC1s5HZ2odj
         mjGyjy6teFRX3UpY4m/XTJGqqVdJTSdMMR2rOK8fbKC2xox1jUG595NygzRMKqPFm824
         gq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JZXE+LOk8oLHP0tL7/E+U99CpD/CaWrtqoVhBNcjMoo=;
        b=0MEMhtejylzQWJ5mY3hhjTIX+MhfB55etWLKU2O7qGbO8Yq4R5/eSTjkZpg+Qji45J
         9z8YeVrUqwjS6zk7M6I1yzZwn0CAka3lEbE82CP8n4pC9k4TuBz4w1+njadngH8C9eTg
         e6ZSQXSYDRRYNAfEJzLv8ts5qzRHZgLFZuHGh25cFsYJqTOEsZru+ZTXLjk/2YeO8Efv
         kcVtsg8I0kZ5YCFVk48jknUbegl72v1JHRrZBoYNyrUoBgmv2phpql0e37U7Vs0jfLjn
         eTAFC3nj9uouYngllu3kDbamwzyWi+CYqVKz6t5m9mflK159y8m48NCHoF4ryE1vYjwV
         uhgQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531N+pn5HBhwSB7V1SnNeZEmLDrYU0qGNeGDVMI4cohGirz1eCrF
	8mvlUbCrcYhhGQOnD5llExc=
X-Google-Smtp-Source: ABdhPJytHNt7fIkXluD+tBppz3YyemuZaVxHCg4Kqvdi5funn1O6Us6egZFRP0U7Dat588BVJDXbOg==
X-Received: by 2002:a2e:9141:0:b0:24d:a7ad:d8b with SMTP id q1-20020a2e9141000000b0024da7ad0d8bmr15369331ljg.200.1650521468903;
        Wed, 20 Apr 2022 23:11:08 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:17a4:b0:24d:5627:cbb7 with SMTP id
 bn36-20020a05651c17a400b0024d5627cbb7ls870518ljb.0.gmail; Wed, 20 Apr 2022
 23:11:06 -0700 (PDT)
X-Received: by 2002:a05:651c:1316:b0:24d:d18f:e8ca with SMTP id u22-20020a05651c131600b0024dd18fe8camr5888439lja.174.1650521466087;
        Wed, 20 Apr 2022 23:11:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650521466; cv=none;
        d=google.com; s=arc-20160816;
        b=dfU6arbquDq9kLAR/jCqzWGtxLajtX3FZGQL8sfZOaIoYylUFe9j5sTF1xc2q6M44k
         M9/Pzkx49bH5FPELd2sGGzBwO38VTXNe2vD0lqNrecr30XjVMvwKk2kJKGG6Ssta/yqG
         8hHBeMLJD+hXhhBEekw82WDZyrxJ2qfRAJSUJBvp1KVphyEkWVQIxdRDMcLjRx5xeEm9
         jYmaDl736iBVJ9EdAGIxNTRBSc/Vk9OQ9hj8eN4OXCRCAHZqDq/Ipob1PmWeF4U5bvUv
         jIXDnAI8xTrNtHslkUWuG3WFFpyhFV0ATbOlwZ+Fes16395bAEBvVfv8UwdyOGF/rwej
         v5tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=AamJDOxluMxLithZxN9lNOEE4gUuPgdRNtVAtJ1geug=;
        b=MBrgBWHc9UvY58uXSXyd+ni0MteoZrbUBzQcIYVsHKbhKXRU86hwHEZXJznf6DZWIr
         NtAz/twhIybib2PWRLqudWbMAk4WgF5tCvXRtn4RFuRWtg4P3O5lWZOYUyJsQyd968pb
         jN4Mzntnd5vEagG2dCKVzrd5oAforjfbdtbEH23VI3iAJeugttv5Tmwe+KsUN5D9roJD
         oc3xtvC0uaIMYy/3y/nhkvyAcv9r7veiJLIntsaeJO+kIY6kbNYon4qlzo238lS3RhDu
         5+Ng1MTNcIIumhu6bX8evX7kD2iPHebj5Z2spts0z+S8QaYIRzXcjRC12FY+gtuCjJD6
         TcNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [194.94.157.149])
        by gmr-mx.google.com with ESMTPS id t8-20020a19dc08000000b004719503b360si168808lfg.13.2022.04.20.23.11.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Apr 2022 23:11:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) client-ip=194.94.157.149;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id E6CE66000051
	for <open-iscsi@googlegroups.com>; Thu, 21 Apr 2022 08:11:04 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id C7483600004E
	for <open-iscsi@googlegroups.com>; Thu, 21 Apr 2022 08:11:04 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 21 Apr 2022 08:11:05 +0200
Message-Id: <6260F577020000A1000497D1@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.4.0
Date: Thu, 21 Apr 2022 08:11:03 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>,
 <haowenchao@huawei.com>,<jejb@linux.ibm.com>,
 <martin.petersen@oracle.com>, "Chris Leech" <cleech@redhat.com>,
 "Lee Duncan" <lduncan@suse.com>, <linux-kernel@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>
Cc: <linfeilong@huawei.com>
Subject: Antw: [EXT] Re: [PATCH v2] scsi: iscsi: Fix multiple iscsi
 session unbind event sent to userspace
References: <20220418000627.474784-1-haowenchao@huawei.com>
 <938bca13-2dcc-24c0-51b5-26f7e7238776@oracle.com>
In-Reply-To: <938bca13-2dcc-24c0-51b5-26f7e7238776@oracle.com>
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

>>> Mike Christie <michael.christie@oracle.com> schrieb am 20.04.2022 um 18:28 in
Nachricht <938bca13-2dcc-24c0-51b5-26f7e7238776@oracle.com>:

...
> 
>> diff --git a/include/scsi/scsi_transport_iscsi.h 
> b/include/scsi/scsi_transport_iscsi.h
>> index 9acb8422f680..877632c25e56 100644
>> --- a/include/scsi/scsi_transport_iscsi.h
>> +++ b/include/scsi/scsi_transport_iscsi.h
>> @@ -256,6 +256,7 @@ struct iscsi_cls_session {
>>  	struct workqueue_struct *workq;
>>  
>>  	unsigned int target_id;
>> +	int target_unbound;   /* make sure unbind session only once */
> 
> 
> We don't need the comment since the code using this is so simple
> and the name of the variable tells us what it's for.

Actually I think a comment may be worth it, but it should say what the variable expresses, not what it is used for
(the use may change, but hopefully not the semantics (unless updated globally)).
So maybe: /* is target unbound? */
(the question mnark emphasizing that it is a boolean type of variable)
But still, if the name is mostly identical to the comment, one may leave out the comment.

Regards,
Ulrich

> 
> 
>>  	bool ida_used;
>>  
>>  	/*
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/938bca13-2dcc-24c0-51b5-26f7e723 
> 8776%40oracle.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6260F577020000A1000497D1%40gwsmtp.uni-regensburg.de.
