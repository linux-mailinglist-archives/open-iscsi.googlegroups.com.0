Return-Path: <open-iscsi+bncBCYMVIPVXQMBBSOJ22QQMGQEMSSEC5A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E066DE3BC
	for <lists+open-iscsi@lfdr.de>; Tue, 11 Apr 2023 20:19:55 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id b9-20020a923409000000b00326156e3a8bsf948811ila.3
        for <lists+open-iscsi@lfdr.de>; Tue, 11 Apr 2023 11:19:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681237194; cv=pass;
        d=google.com; s=arc-20160816;
        b=M3PPGiR5YmYym2jGSEPzz5JmSZC6iz5XybwXj8/NDmnJXrDZ0zS+1jMRm1DtzVIEa0
         ImZXIgmIfvBO1zALBjko1ntekO09OU6TtPEB6e2QZQHQmq0B42IIsPS2viIqYIvZS0m2
         112BnFCWYsa3DYy+QR1aJEo+gSbKhfT0OQfORirlG9p2ZbDCILVJGp9c070H2F/vWTyG
         i9KwQUBIfwXNhbVLMb41JV6WsJJAu16Rto1a5LYzLrA2rRLqXJHQm3Xsltkid6dzICKG
         brk4v92Ji6cn/rG7N45qurnKSO7K41gDh/+kY99NQ+0/nKCOirPeDAN5V65jb2RGlwie
         hqmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=jbdqz/t++HRZbPaAXqiGq0/PuSzUx20ImHiQVl/G79k=;
        b=ttjdt9Nnmlu0OJ8kjO29BTPXBlFlJ6guOyDY9xYwMUHigpVghAYpkKZO5LryGRlKvd
         2EwBuZC74RC2HDwAYIglhl5lO2M9T1bA+v3qz3tQXPk/gTQ79Lk0AEb0GOE0n7HuioPg
         M9aeBeV9cDQ17LkqKvLOChOvvdP/M6mN5+tWJscumRjpAtmrSSOsy9ZD6Wsp25mJvmkA
         8EvDjkiK1VZ5ry+b7slyCt2ztwaENsMGT98A822NLqGkxXbl10RNfZuFrx5jpEj22Mih
         0pkdPKCycyIOBzRhmM9rlC+lS4GjgmEVMvCPRz2ehzGI3FCpJM47iV3+whgtHQagrjRI
         Wh7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DQ0sc8+1;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681237194;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jbdqz/t++HRZbPaAXqiGq0/PuSzUx20ImHiQVl/G79k=;
        b=VCjiYs6shAY6bZJ5YdbuJTmu3bFBPpWi+r/NFa5MTlUVcREkjIGAxsf/EutBFzK9JT
         bdeeoUbt1jR3EVUvOf0+Rjan0pTQGxaetGsMNig4y7br4JC9AYcgg2bEpQjdFU3uozcy
         Nhjcx5jOdeHYMTudNMJPO2pwg1/fBpwztIUYYtGgdkZEN1VRys3oXrPPXp+llURMvpGa
         56lHFcID4GoU77REIhDjNgtJQSdm4R4pamcmRdcFnAumJH5cECpx021pUDPezSNr+tEu
         xSYi44KNkUFgWGJ8xuXTta5EWumIe+t5ufCAKw/KjF2wY2JJs6IiwNE6KbEekowlR5CL
         LHOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681237194;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jbdqz/t++HRZbPaAXqiGq0/PuSzUx20ImHiQVl/G79k=;
        b=msNyHjskoIl4AL4kJi/z4dkO+CxKD1Do3KeYjtyMOJVoqW6/zOtGIXqwI7w0M1LuFm
         Eb7Qe9wSE4JXPPc58g34GnVlKYfPXTSg+iJrpScjlTydCGEp+6cirAFwLzRmdg0Y9OZb
         erEZSw8iBeiVfQ88gc8h+S21dZOlqD1S4EdGqtXkzBdnGMicsbBvAc7T70IQbYGLqbML
         f5LUGLMSrW6waf0xTR3Pq8ubbLkUg9PI/+kG+N0NY33jTV5MKjDX3Eov6fDe0wnlbwCu
         3NpocNiPLuTOq3++X43huZ9pdvj7SvyVuwhj1+9rcmot4F3CjsZgF/1x/ZAJaIeKNN6k
         3OZA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9czkJrojCgbtTsW6YzwoC7EN/cqPz5efMrvgwtg7Qfseab3yN8E
	67LR24NKvB/9AMW8IrApVKM=
X-Google-Smtp-Source: AKy350angDimT7uiWSt7tSxyCePHW5KlQB2nsAP8gwkv3nVAdpPfIHeOacir/nHoCBar5y0aNIxQRQ==
X-Received: by 2002:a02:7a52:0:b0:3c5:139d:609b with SMTP id z18-20020a027a52000000b003c5139d609bmr1426492jad.1.1681237194166;
        Tue, 11 Apr 2023 11:19:54 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1101:b0:317:97e2:9054 with SMTP id
 u1-20020a056e02110100b0031797e29054ls11064102ilk.4.-pod-prod-gmail; Tue, 11
 Apr 2023 11:19:52 -0700 (PDT)
X-Received: by 2002:a92:d410:0:b0:325:c8ed:6775 with SMTP id q16-20020a92d410000000b00325c8ed6775mr6373488ilm.18.1681237192769;
        Tue, 11 Apr 2023 11:19:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681237192; cv=none;
        d=google.com; s=arc-20160816;
        b=FyseIgXr7ZVjkLsKXTgFUFG7uzFlPhiYDd66dXMHuuEUh8WEh0NSeRRLCJBVL9qd9i
         WGPoz/o5C641WbYL7YKezZmBQRpz9T8vqi4XzWoX3abcFxCQL2U85ACHKBGMvvsoNeZE
         l9Fb7+ebZVr0FFpq1ezJH1h5pI3zKqe85boW1/XChb84vdUtqsO3kpocqkVi39JK98XK
         qFY9o2jFcRqG2s2Waa5AdPJF5jPsw9I5iul9lFvdS4b2eTzQRki3E4qinb8xEOhAFChH
         GL6ObwqUS3LVtIU2W2kisIqwVuCr2Yt73frrwnXHuXD1lglOE1yh5S0mEeFi54Ti2NPz
         lbqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=mAc9R2NlOKWjR2PE+m5zaGvaSX1lOZHMdVV04kPoutU=;
        b=YxsU7K1O0neD+X9u3gje+lL8IebafS/bmhsnGEaru7uMnkouraG+9CsbWud9u32s2Z
         J3qzr7rrQ/7cGW4Pv05HKojGO98bMhpwnjRz7ZCV/6I//PBjPB5yNqgu4C+57dJ6RIWH
         QrAa+kZc2aM0Tm/R4XhWl0W0lTVHaCoaUp0A9ZJjG4OHXIEN+6IjDRAimAtZNl1Yyyfv
         MRxf3kE90dlfcaFqm/uGqK0n7Q8C+whgUYFXqfpsrcjgawfi/ki7wtmuEOB0WVX4mNN/
         GcFFI0H9Id9MWXSi93OyYeh40udqlDYCbgAF6FWuuxA7JMg/zDizxYazv5ZLGfNQdOh+
         q5Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DQ0sc8+1;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id s8-20020a056638218800b003b8b7635cb2si1481942jaj.0.2023.04.11.11.19.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 11:19:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-91-Jhv8xwOrMcuRFBV00TV5Dw-1; Tue, 11 Apr 2023 14:19:47 -0400
X-MC-Unique: Jhv8xwOrMcuRFBV00TV5Dw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 727961C08960;
	Tue, 11 Apr 2023 18:19:47 +0000 (UTC)
Received: from localhost (unknown [10.2.16.6])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DFEFF2166B30;
	Tue, 11 Apr 2023 18:19:46 +0000 (UTC)
Date: Tue, 11 Apr 2023 11:19:45 -0700
From: Chris Leech <cleech@redhat.com>
To: Hannes Reinecke <hare@suse.de>
Cc: linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
	Lee Duncan <leeman.duncan@gmail.com>, netdev@vger.kernel.org
Subject: Re: [PATCH 11/11] iscsi: force destroy sesions when a network
 namespace exits
Message-ID: <20230411181945.GB1234639@localhost>
Mail-Followup-To: Hannes Reinecke <hare@suse.de>,
	linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
	Lee Duncan <leeman.duncan@gmail.com>, netdev@vger.kernel.org
References: <83de4002-6846-2f90-7848-ef477f0b0fe5@suse.de>
 <20230410191033.1069293-3-cleech@redhat.com>
 <85458436-702f-2e38-c7cc-ff7329731eda@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <85458436-702f-2e38-c7cc-ff7329731eda@suse.de>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=DQ0sc8+1;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Apr 11, 2023 at 08:21:22AM +0200, Hannes Reinecke wrote:
> On 4/10/23 21:10, Chris Leech wrote:
> > The namespace is gone, so there is no userspace to clean up.
> > Force close all the sessions.
> > 
> > This should be enough for software transports, there's no implementation
> > of migrating physical iSCSI hosts between network namespaces currently.
> > 
> Ah, you shouldn't have mentioned that.
> (Not quite sure how being namespace-aware relates to migration, though.)
> We should be checking/modifying the iSCSI offload drivers, too.
> But maybe with a later patch.

I shouldn't have left that opening ;-)

The idea with this design is to keep everything rooted on the
iscsi_host, and for physical HBAs those stay assigned to init_net.
With this patch set, offload drivers remain unusable in a net namespace
other than init_net. They simply are not visible.

By migration, I was implying the possibilty of assigment of an HBA
iscsi_host into a namespace like you can do with a network interface.
Such an iscsi_host would then need to be migrated back to init_net on
namespace exit.

I don't think it works to try and share an iscsi_host across namespaces,
and manage different sessions. The iSCSI HBAs have a limited number of
network configurations, exposed as iscsi_iface objects, and I don't want
to go down the road of figuring out how to share those.

- Chris

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230411181945.GB1234639%40localhost.
